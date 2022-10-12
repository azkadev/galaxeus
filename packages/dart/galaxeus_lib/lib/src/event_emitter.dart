part of galaxeus_lib;

/// Event class. This is send back to the subscriber when an event is triggered,
/// Subscriber can use the instance to retrieve the event data and other event related parameters.
/// eventName is a mandatory parameter and will represent the current event.
class Event {
  /// What event the emitter triggers.
  /// This is very useful to perform actions if you have single event handler to perform multiple operations.
  final String eventName;

  /// If the event associated has any event data, then this object holds reference to it.
  /// Few events might not return data. Validate this field before using it.
  final Object? eventData;

  /// If this field is valid, then it shows who send the event to.
  /// This can be very useful while debugging systems with large event queues.
  final Object? sender;

  /// Flag to identify whether the event is already handled.
  /// This is useful if we have event bubbling supported, where in it could be handled in any of the
  /// inheritance hirearchy or handled in one of the listener.
  /// Event should not be passed to other listeners if it is already handled by one listener.
  bool _handled = false;

  /// Default constructor for the Event class.
  /// [eventName] - the name of the event, used to identify the event.
  /// [eventData] - The data associated with the event.
  /// [sender] - Identifier to identify who is sending the event.
  Event(this.eventName, [this.eventData, this.sender]);

  /// Getter to fetch handled information.
  bool get handled => _handled;

  /// Setter to set the handled information. If handled already, then setting this value to false doesn't affect.
  set handled(bool val) => _handled = _handled || val;
}

/// The callback function to receive event notification.
/// [ev] - [Event] event emitted by the publisher.
/// [context] - [Object] passed while registering the subscription as context. This is useful especially when the listener want to receive context information for all future events emitted for the context.
typedef EventCallback = void Function(Event ev, Object? context);

/// This class provides necessary implementations for subscribing and cancelling the event subscriptions and publishing events to the subcribers.
class EventEmitter {
  final Map<String, Set<Listener>> _listeners = <String, Set<Listener>>{};

  /// API to register for notification.
  /// It is mandatory to pass event name and callback parameters.
  /// [event] - Event name used for the subscription. A valid event name is mandatory.
  /// [context] - Context information, which need to be sent in all emitted events.
  /// [callback] - [EventCallback] function registered to receive events emitted from the publisher. A valid callback function is mandatory.
  Listener on(String event, Object? context, EventCallback callback) {
    if (event.trim().isEmpty) {
      throw ArgumentError.notNull('event');
    }

    var subs =
        // ignore: prefer_collection_literals
        _listeners.putIfAbsent(event, () => Set<Listener>());

    // Create new element.
    var listener = Listener.Default(event, context, callback);

// Apply cancellation callback.
    listener._cancelCallback = () {
      _removeListener(listener);
    };

    subs.add(listener);
    return listener;
  }

  /// Remove event listener from emitter.
  /// This will unsubscribe the caller from the emitter from any future events.
  /// Listener should be a valid instance.
  /// [listener] - [Listener] instance to be removed from the event subscription.
  void off(Listener? listener) {
    if (null == listener) {
      throw ArgumentError.notNull('listener');
    }

    // Check if the listner has a valid callback for cancelling the subscription.
    // Use the callback to cancel the subscription.
    if (false == listener.cancel()) {
      // Assuming that subscription was not cancelled, could be that the cancel callback was not registered.
      // Follow the old trained method to remove the subrscription .
      _removeListener(listener);
    }
  }

  /// Private method to remove a listener from subject.
  /// The listener should not be a null object.
  void _removeListener(Listener listener) {
    if (_listeners.containsKey(listener.eventName)) {
      var subscribers = _listeners[listener.eventName]!;

      subscribers.remove(listener);
      if (subscribers.isEmpty) {
        _listeners.remove(listener.eventName);
      }
    }
  }

  /// Unsubscribe from getting any future events from emitter.
  /// This mechanism uses event name and callback to unsubscribe from all possible events.
  /// [eventName] - Event name for the subscription.
  /// [callback] - [EventCallback] used when registering subscription using [on] function.
  void removeListener(String eventName, EventCallback callback) {
    if (eventName.trim().isEmpty) {
      throw ArgumentError.notNull('eventName');
    }

    // Check if listeners have the specific event already registered.
    // if so, then check for the callback registration.

    if (_listeners.containsKey(eventName)) {
      var subs = _listeners[eventName]!;
      subs.removeWhere((element) =>
          element.eventName == eventName && element.callback == callback);
    }
  }

  /// API to emit events.
  /// event is a required parameter.
  /// If sender information is sent, it will be used to intimate user about it.
  /// [event] - What event needs to be emitted.
  /// [sender] - The sender who published the event. Ignore if not required.
  /// [data] - Data the event need to carry. Ignore this argument if no data needs to be sent.
  void emit(String event, [Object? sender, Object? data]) {
    if (event.trim().isEmpty) {
      throw ArgumentError.notNull('event');
    }

    if (_listeners.containsKey(event)) {
      var ev = Event(event, data, sender);
      var sublist = _listeners[event]!.toList();
      for (var i = 0; i < sublist.length; i++) {
        var item = sublist[i];
        item.callback(ev, item.context);
        if (ev.handled) {
          break;
        }
      }
    }
  }

  /// Clear all subscribers from the cache.
  void clear() {
    _listeners.clear();
  }

  /// Remove all listeners which matches with the callback provided.
  /// It is possible to register for multiple events with a single callback.
  /// This mechanism ensure that all event registrations would be cancelled which matches the callback.
  /// [callback] - The event callback used during subscription.
  void removeAllByCallback(EventCallback callback) {
    _listeners.forEach((key, lst) {
      lst.removeWhere((item) => item.callback == callback);
    });
  }

  /// Use this mechanism to remove all subscription for a particular event.
  /// Caution : This will remove all the listeners from multiple files or classes or modules.
  /// Think twice before calling this API and make sure you know what you are doing!!!
  /// [event] - Event name used during subscription.
  void removeAllByEvent(String event) {
    if (event.trim().isEmpty) {
      throw ArgumentError.notNull('event');
    }
    _listeners.removeWhere((key, val) => key == event);
  }

  /// Get the unique count of events registered in the emitter.
  int get count => _listeners.length;

  /// Get the list of subscribers for a particular event.
  int getListenersCount(String event) =>
      _listeners.containsKey(event) ? _listeners[event]!.length : 0;
}

/// Handler for cancelling the event registration.
typedef CancelEvent = void Function();

/// Listener is one who listen for specific event.
/// Listener register for notification with EventEmitter
/// Once the listener is registered, a Listener interface is returned back to the caller.
/// Caller can use this Listener interface to cancel the registration or check the state.
class Listener {
  /// A mechanism to cancel the event.
  CancelEvent? _cancelCallback;

  /// The event name, the subscriber subscribed to.
  final String eventName;

  /// The context from which subscriber is interested in.
  final Object? context;

  /// The event callback, which the subscriber uses when he register it for.
  final EventCallback callback;

  /// Constructor for Listener.
  /// This will take four arguments.
  /// [eventName], [callback] are mandatory.
  /// [context], [_cancelCallback] are optional.
  /// if [_cancelCallback] callback is provided, then the listener can use that to cancel the subscription.
  Listener(this.eventName, this.context, this.callback, this._cancelCallback);

  /// Constructor for Listener.
  /// This will take four arguments.
  /// [eventName], [callback] are mandatory.
  /// [context] is optional.
  Listener.Default(this.eventName, this.context, this.callback);

  /// Cancel the event subscription with the subject.
  /// Eventhough the cancel method is called, listener doesn't check the cancellation of the subscription.
  /// Subscription cancellation shall be implemented in the _cancelCallback function.
  /// The Default constructor doesn't provide a mechanism to cancel the subscription.
  /// Use the EventEmitter.on to cancel the suscrition effectively.
  /// Returns true, if _cancelCallback is successfully executed, false otherwise.
  bool cancel() {
    if (null != _cancelCallback) {
      _cancelCallback!();
      return true;
    }

    return false;
  }
}
