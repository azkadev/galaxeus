// ignore_for_file: unnecessary_brace_in_string_interps
part of galaxeus_lib;

String jsonToDart(
  Map<String, dynamic> data, {
  String className = "Root",
  bool isMain = true,
  bool isUseClassName = false,
  String? comment,
  bool isStatic = false,
}) {
  if (isStatic) {
    return jsonToDartStatic(data,
        className: className,
        isMain: isMain,
        isUseClassName: isUseClassName,
        comment: comment);
  } else {
    return jsonToDartDynamic(data,
        className: className,
        isMain: isMain,
        isUseClassName: isUseClassName,
        comment: comment);
  }
}

String jsonToDartDynamic(
  Map<String, dynamic> data, {
  String className = "Root",
  bool isMain = true,
  bool isUseClassName = false,
  String? comment,
}) {
  comment ??= "";
  List<String> classMessages = [];
  String classMessage = """
${((isMain) ? "// ignore_for_file: non_constant_identifier_names\nimport 'dart:convert';" : "")}


${comment}
class ${className} {
  late Map rawData;

""";
  String classData = """

  ${comment}
  ${className}(this.rawData) {
  
""";
  String classDataCreate = """

  ${comment}
  factory ${className}.create({

""";
  String classDataCreateJson = """{

  
""";
  data.forEach((key, value) {
    String nameClass = key.camelCaseClass();
    if (isUseClassName) {
      nameClass = "${className}${key.camelCaseClass()}";
    }

    if (value is String) {
      classMessage += textToFunctionDynamic(
        key: key,
        className: className,
        returnType: "String",
        comment: comment,
        callback: (text) {
          classData += text;
        },
        paramFunction: (text) {
          classDataCreate += text;
        },
        paramJson: (text) {
          classDataCreateJson += text;
        },
      );
    }
    if (value is int) {
      classMessage += textToFunctionDynamic(
        key: key,
        className: className,
        returnType: "int",
        comment: comment,
        callback: (text) {
          classData += text;
        },
        paramFunction: (text) {
          classDataCreate += text;
        },
        paramJson: (text) {
          classDataCreateJson += text;
        },
      );
    } else if (value is double) {
      classMessage += textToFunctionDynamic(
        key: key,
        className: className,
        returnType: "double",
        comment: comment,
        callback: (text) {
          classData += text;
        },
        paramFunction: (text) {
          classDataCreate += text;
        },
        paramJson: (text) {
          classDataCreateJson += text;
        },
      );
    } else if (value is num) {
      classMessage += textToFunctionDynamic(
        key: key,
        className: className,
        returnType: "num",
        comment: comment,
        callback: (text) {
          classData += text;
        },
        paramFunction: (text) {
          classDataCreate += text;
        },
        paramJson: (text) {
          classDataCreateJson += text;
        },
      );
    }
    if (value is bool) {
      classMessage += textToFunctionDynamic(
        key: key,
        className: className,
        returnType: "bool",
        comment: comment,
        callback: (text) {
          classData += text;
        },
        paramFunction: (text) {
          classDataCreate += text;
        },
        paramJson: (text) {
          classDataCreateJson += text;
        },
      );
    }
    if (value is Map) {
      classMessage += textToFunctionDynamic(
        key: key,
        className: className,
        returnType: "Map",
        isClass: true,
        isUseClassName: isUseClassName,
        comment: comment,
        callback: (text) {
          classData += text;
        },
        paramFunction: (text) {
          classDataCreate += text;
        },
        paramJson: (text) {
          classDataCreateJson += text;
        },
      );
      classMessages.add(jsonToDartDynamic(value.cast<String, dynamic>(),
          className: nameClass,
          isMain: false,
          isUseClassName: isUseClassName,
          comment: comment));
    }

    if (value is List) {
      if (value.isNotEmpty) {
        if (value.first is Map) {
          classMessage += textToFunctionDynamic(
            key: key,
            className: className,
            returnType: "Map",
            isClass: true,
            isUseClassName: isUseClassName,
            isList: true,
            comment: comment,
            callback: (text) {
              classData += text;
            },
            paramFunction: (text) {
              classDataCreate += text;
            },
            paramJson: (text) {
              classDataCreateJson += text;
            },
          );
          classMessages.add(jsonToDartDynamic(
              (value.first as Map).cast<String, dynamic>(),
              className: nameClass,
              isMain: false,
              isUseClassName: isUseClassName,
              comment: comment));
        }
        if (value.first is bool) {
          classMessage += textToFunctionDynamic(
            key: key,
            className: className,
            returnType: "bool",
            isClass: false,
            isList: true,
            comment: comment,
            callback: (text) {
              classData += text;
            },
            paramFunction: (text) {
              classDataCreate += text;
            },
            paramJson: (text) {
              classDataCreateJson += text;
            },
          );
        }
        if (value.first is String) {
          classMessage += textToFunctionDynamic(
            key: key,
            className: className,
            returnType: "String",
            isClass: false,
            isList: true,
            comment: comment,
            callback: (text) {
              classData += text;
            },
            paramFunction: (text) {
              classDataCreate += text;
            },
            paramJson: (text) {
              classDataCreateJson += text;
            },
          );
        }
        if (value.first is int) {
          classMessage += textToFunctionDynamic(
            key: key,
            className: className,
            returnType: "int",
            isClass: false,
            isList: true,
            comment: comment,
            callback: (text) {
              classData += text;
            },
            paramFunction: (text) {
              classDataCreate += text;
            },
            paramJson: (text) {
              classDataCreateJson += text;
            },
          );
        } else if (value.first is double) {
          classMessage += textToFunctionDynamic(
            key: key,
            className: className,
            returnType: "double",
            isClass: false,
            isList: true,
            comment: comment,
            callback: (text) {
              classData += text;
            },
            paramFunction: (text) {
              classDataCreate += text;
            },
            paramJson: (text) {
              classDataCreateJson += text;
            },
          );
        } else if (value.first is num) {
          classMessage += textToFunctionDynamic(
            key: key,
            className: className,
            returnType: "num",
            isClass: false,
            isList: true,
            comment: comment,
            callback: (text) {
              classData += text;
            },
            paramFunction: (text) {
              classDataCreate += text;
            },
            paramJson: (text) {
              classDataCreateJson += text;
            },
          );
        }
        if (value.first == null) {
          classMessage += textToFunctionDynamic(
            key: key,
            className: className,
            returnType: "Object",
            isClass: false,
            isList: true,
            comment: comment,
            callback: (text) {
              classData += text;
            },
            paramFunction: (text) {
              classDataCreate += text;
            },
            paramJson: (text) {
              classDataCreateJson += text;
            },
          );
        }
      } else {
        classMessage += textToFunctionDynamic(
          key: key,
          className: className,
          returnType: "Object",
          isClass: false,
          isList: true,
          comment: comment,
          callback: (text) {
            classData += text;
          },
          paramFunction: (text) {
            classDataCreate += text;
          },
          paramJson: (text) {
            classDataCreateJson += text;
          },
        );
      }
    }

    if (value == null) {
      classMessage += textToFunctionDynamic(
        key: key,
        className: className,
        returnType: "Object",
        isClass: false,
        isList: false,
        comment: comment,
        callback: (text) {
          classData += text;
        },
        paramFunction: (text) {
          classDataCreate += text;
        },
        paramJson: (text) {
          classDataCreateJson += text;
        },
      );
    }
  });
  classDataCreateJson += "\n\n  }";
  classDataCreate += "})  {";
  classDataCreate += "\n\nreturn ${className}(${classDataCreateJson});";

  classDataCreate += "\n\n      }";
  classData += "\n\n    }";

  classMessage += classData;

  classMessage += classDataCreate;

  classMessage += """

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}""";

  classMessage += "\n\n${classMessages.join("\n\n")}";
  return classMessage;
}

String jsonToDartStatic(
  Map<String, dynamic> data, {
  String className = "Root",
  bool isMain = true,
  bool isUseClassName = false,
  String? comment,
}) {
  comment ??= "";
  List<String> classMessages = [];
  String classMessage = """
${((isMain) ? "// ignore_for_file: non_constant_identifier_names\nimport 'dart:convert';" : "")}


${comment}
class ${className} {
  late Map rawData;

  ${comment}
  ${className}(this.rawData);

""";
  data.forEach((key, value) {
    String nameClass = key.camelCaseClass();
    if (isUseClassName) {
      nameClass = "${className}${key.camelCaseClass()}";
    }

    if (value is String) {
      classMessage += textToFunction(
          key: key,
          className: className,
          returnType: "String",
          comment: comment);
    }
    if (value is int) {
      classMessage += textToFunction(
          key: key, className: className, returnType: "int", comment: comment);
    } else if (value is double) {
      classMessage += textToFunction(
          key: key,
          className: className,
          returnType: "double",
          comment: comment);
    } else if (value is num) {
      classMessage += textToFunction(
          key: key, className: className, returnType: "num", comment: comment);
    }
    if (value is bool) {
      classMessage += textToFunction(
          key: key, className: className, returnType: "bool", comment: comment);
    }
    if (value is Map) {
      classMessage += textToFunction(
        key: key,
        className: className,
        returnType: "Map",
        isClass: true,
        isUseClassName: isUseClassName,
        comment: comment,
      );
      classMessages.add(jsonToDart(value.cast<String, dynamic>(),
          className: nameClass,
          isMain: false,
          isUseClassName: isUseClassName,
          comment: comment));
    }

    if (value is List) {
      if (value.isNotEmpty) {
        if (value.first is Map) {
          classMessage += textToFunction(
            key: key,
            className: className,
            returnType: "Map",
            isClass: true,
            isUseClassName: isUseClassName,
            isList: true,
            comment: comment,
          );
          classMessages.add(jsonToDart(
              (value.first as Map).cast<String, dynamic>(),
              className: nameClass,
              isMain: false,
              isUseClassName: isUseClassName,
              comment: comment));
        }
        if (value.first is bool) {
          classMessage += textToFunction(
              key: key,
              className: className,
              returnType: "bool",
              isClass: false,
              isList: true,
              comment: comment);
        }
        if (value.first is String) {
          classMessage += textToFunction(
              key: key,
              className: className,
              returnType: "String",
              isClass: false,
              isList: true,
              comment: comment);
        }
        if (value.first is int) {
          classMessage += textToFunction(
              key: key,
              className: className,
              returnType: "int",
              isClass: false,
              isList: true,
              comment: comment);
        } else if (value.first is double) {
          classMessage += textToFunction(
              key: key,
              className: className,
              returnType: "double",
              isClass: false,
              isList: true,
              comment: comment);
        } else if (value.first is num) {
          classMessage += textToFunction(
              key: key,
              className: className,
              returnType: "num",
              isClass: false,
              isList: true,
              comment: comment);
        }
        if (value.first == null) {
          classMessage += textToFunction(
              key: key,
              className: className,
              returnType: "Object",
              isClass: false,
              isList: true,
              comment: comment);
        }
      } else {
        classMessage += textToFunction(
            key: key,
            className: className,
            returnType: "Object",
            isClass: false,
            isList: true,
            comment: comment);
      }
    }

    if (value == null) {
      classMessage += textToFunction(
          key: key,
          className: className,
          returnType: "Object",
          isClass: false,
          isList: false,
          comment: comment);
    }
  });

  classMessage += """

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}""";

  classMessage += "\n\n${classMessages.join("\n\n")}";
  return classMessage;
}

String textToFunction(
    {required String key,
    required String returnType,
    required String className,
    bool isClass = false,
    bool isList = false,
    bool isUseClassName = false,
    String? comment}) {
  comment ??= "";
  String nameClass = key.camelCaseClass();
  if (isUseClassName) {
    nameClass = "${className}${key.camelCaseClass()}";
  }

  String nameMethod =
      key.replaceAll(RegExp(r"^(@|[0-9]+)", caseSensitive: false), "special_");
  if (isClass) {
    if (isList) {
      return """
  ${comment}
  List<${nameClass}?>? get ${nameMethod} {
    try {
      if (rawData["$key"] is List == false){
        return null;
      }
      return (rawData["$key"] as List).map((e) => ${nameClass}(e as $returnType)).toList().cast<${nameClass}>();
    } catch (e) {
      return null;
    }
  }

""";
    }
    return """

  ${comment}
  ${nameClass} get ${nameMethod} {
    try {
      if (rawData["$key"] is $returnType == false){
        return ${nameClass}({}); 
      }
      return ${nameClass}(rawData["$key"] as $returnType);
    } catch (e) {  
      return ${nameClass}({}); 
    }
  }

""";
  }
  if (isList) {
    return """

  ${comment}
  List<${returnType}?>? get ${nameMethod} {
    try {
      if (rawData["$key"] is List == false){
        return null;
      }
      return (rawData["$key"] as List).cast<${returnType}>();
    } catch (e) {
      return null;
    }
  }

""";
  }

  return """

  ${comment}
  $returnType? get ${nameMethod} {
    try {
      if (rawData["$key"] is $returnType == false){
        return null;
      }
      return rawData["$key"] as $returnType;
    } catch (e) {
      return null;
    }
  }

""";
}

String textToFunctionDynamic({
  required String key,
  required String returnType,
  required String className,
  bool isClass = false,
  bool isList = false,
  bool isUseClassName = false,
  String? comment,
  required void Function(String text) callback,
  required void Function(String text) paramFunction,
  required void Function(String text) paramJson,
}) {
  comment ??= "";
  String nameClass = key.camelCaseClass();
  if (isUseClassName) {
    nameClass = "${className}${key.camelCaseClass()}";
  }

  String nameMethod =
      key.replaceAll(RegExp(r"^(@|[0-9]+)", caseSensitive: false), "special_");
  if (isClass) {
    if (isList) {
      paramFunction.call("""
      List<${nameClass}?>? ${nameMethod},
""");
      paramJson.call("""
      "${key}": (${nameMethod} != null)? ${nameMethod}.map((res) => res!.toJson()).toList().cast<Map>(): null,
""");
      callback.call("""
      try {
        if (rawData["$key"] is List == false){
          ${nameMethod}  = null;
        }
        ${nameMethod} = (rawData["$key"] as List).map((e) => ${nameClass}(e as $returnType)).toList().cast<${nameClass}>();
      } catch (e) {
        ${nameMethod}  = null;
      }
""");
      return """
  ${comment}
  late List<${nameClass}?>? ${nameMethod};

""";
    }
    paramFunction.call("""
      ${nameClass}? ${nameMethod},
""");
    paramJson.call("""
      "${key}": (${nameMethod} != null)?${nameMethod}.toJson(): null,
""");
    callback.call("""
      try {
        if (rawData["$key"] is $returnType == false){
          ${nameMethod}  =  ${nameClass}({});
        }
        ${nameMethod} = ${nameClass}(rawData["$key"] as $returnType);
      } catch (e) {
        ${nameMethod}  = ${nameClass}({}); 
      }
""");
    return """

  ${comment}
  late ${nameClass} ${nameMethod} = ${nameClass}({});

""";
  }
  if (isList) {
    paramFunction.call("""
      List<${returnType}?>? ${nameMethod},
""");
    paramJson.call("""
      "${key}": ${nameMethod},
""");
    callback.call("""
      try {
        if (rawData["$key"] is List == false){
          ${nameMethod}  = null;
        }
        ${nameMethod} = (rawData["$key"] as List).cast<${returnType}>();
      } catch (e) {
        ${nameMethod}  = null;
      }
""");
    return """

  ${comment}
  late List<${returnType}?>? ${nameMethod};

""";
  }
  paramFunction.call("""
    $returnType? ${nameMethod},
""");
  paramJson.call("""
      "${key}": ${nameMethod},
""");
  callback.call("""
      try {
        if (rawData["$key"] is $returnType == false){
          ${nameMethod}  = null;
        }
        ${nameMethod} = rawData["$key"] as $returnType;
      } catch (e) {
        ${nameMethod}  = null;
      }
""");
  return """

  ${comment}
  late $returnType? ${nameMethod};

""";
}

extension JsonToClassStringExtensions on String {
  String camelCaseClass({RegExp? regExp}) {
    regExp ??= RegExp(r"(_)", caseSensitive: false);
    String text = "";
    for (var i = 0; i < length; i++) {
      var loopData = this[i];
      if (i == 0) {
        text += loopData.toUpperCase();
      } else {
        if (regExp.hasMatch(text[text.length - 1])) {
          text += loopData.toUpperCase();
        } else {
          text += loopData;
        }
      }
    }
    return text.replaceAll(regExp, "");
  }
}
