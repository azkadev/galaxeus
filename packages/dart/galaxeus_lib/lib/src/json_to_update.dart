part of galaxeus_lib;

Map jsonUpdate({required Map data, required Map newData}) {
  newData.forEach((key, value) {
    if (value is Map) {
      if (data.containsKey(key)) {
        if (data[key] is Map) {
          late Map dataSub = {};
          (data[key] as Map).forEach((keySub, valueSub) {
            dataSub[keySub] = valueSub;
          });
          late Map newDataSub = {};
          (newData[key] as Map).forEach((keySub, valueSub) {
            newDataSub[keySub] = valueSub;
          });
          data[key] = jsonUpdate(data: dataSub, newData: newDataSub);
        } else {}
      } else {
        data[key] = value;
      }
    } else if (value is List) {
      if (data.containsKey(key)) {
        if (data[key] is List) {
          late List dataSubs = (data[key] as List);
          late List newDataSubs = (newData[key] as List);
          if (dataSubs.first is Map) {
            if (newDataSubs.first is Map) {
              late Map dataMap = {};
              (dataSubs.first as Map).forEach((keySub, valueSub) {
                dataMap[keySub] = valueSub;
              });
              late Map newDataMap = {};
              (newDataSubs.first as Map).forEach((keySub, valueSub) {
                newDataMap[keySub] = valueSub;
              });
              dataMap = jsonUpdate(data: dataMap, newData: newDataMap);

              dataSubs.map((e) {
                if (e is Map) {
                  dataMap = jsonUpdate(data: dataMap, newData: e);
                } else if (e is List) {
                } else {}
              });
              newDataSubs.map((e) {
                if (e is Map) {
                  dataMap = jsonUpdate(data: dataMap, newData: e);
                } else if (e is List) {
                } else {}
              });
              (data[key] as List)[0] = dataMap;
            }
          } else if ((data[key] as List).isEmpty) {
            data[key] = newData[key];
          }
        } else {}
      } else {
        data[key] = value;
      }
    } else {
      if (!data.containsKey(key)) {
        data[key] = value;
      }
    }
  });
  return data;
}
