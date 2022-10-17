// ignore_for_file: unused_local_variable, unnecessary_brace_in_string_interps

import 'dart:io';

void main(List<String> arguments) {
  List<String> data = File("/home/hexaminate/Documents/HEXAMINATE/app/galaxeus/packages/dart/tdlib_scheme/tdlib.tl").readAsStringSync().split("\n");
  RegExp regex = RegExp(r"^([a-z0-9]+)([ ]+)?(.*)([ ]+)?=([ ]+)?([a-z0-9]+);$", caseSensitive: false);
  String name_class = "TdlibFunction";
  // List<RegExpMatch> regexs = regex.allMatches(data).toList();
  Map<String, dynamic> object_data = {};
  String result_function = """
  class ${name_class} {
        late Map rawData;
        ${name_class}(this.rawData);
  """;
  String result_class = """""";
  late bool isFoundFunction = false;
  for (var i = 0; i < data.length; i++) {
    if (RegExp(r"---functions---", caseSensitive: false).hasMatch(data[i])) {
      isFoundFunction = true;
    }
    if (isFoundFunction) {
      RegExpMatch? loop_data = regex.firstMatch(data[i]);
      if (loop_data == null) {
        continue;
      }
      String method = loop_data.group(1) ?? "";
      String param = loop_data.group(3) ?? "";
      String result = loop_data.group(6) ?? "";
      List<String> params = param.split(" ");
      String parameter_function = "{";
      late bool is_found_parameter_function = false;
      String parameter_class = "";

      for (var ii = 0; ii < params.length; ii++) {
        String param_data = params[ii];
        if (param_data.isEmpty) {
          continue;
        }
        if (!param_data.contains(RegExp(r":"))) {
          continue;
        }

        List<String> param_datas = param_data.split(":");
        String name_param = param_datas[0];
        String type_param = param_datas[1].replaceAll(RegExp(r"vector<"), "List<");
        type_param = type_param.replaceAll(RegExp(r"string"), "String");
        type_param = type_param.replaceAll(RegExp(r"int(32|53|64)"), "int");
        type_param = type_param.replaceAll(RegExp(r"bool(False|True)"), "bool");
        type_param = type_param.replaceAll(RegExp(r"Bool"), "bool");
        type_param = type_param.replaceAll(RegExp(r"bytes"), "String");
        type_param = type_param.replaceAll(RegExp(r"Bytes"), "String");
        bool isTypeData = false;

        /// detect native dart type data
        if (RegExp(r"^(String|int|bool|double|List<(String|int|bool|double)>)$", caseSensitive: false).hasMatch(type_param)) {
          isTypeData = true;
        } else {
          if (RegExp(r"List<.*>", caseSensitive: false).hasMatch(type_param)) {
            if (RegExp(r"List<List<.*>>", caseSensitive: false).hasMatch(type_param)) {
              /// set method this List<List<typeData>> to List<List<TypeData>>
              type_param = "${type_param.substring(0, 10)}${type_param[10].toUpperCase()}${type_param.substring(11, type_param.length)}";
            } else {
              /// set method this List<typeData> to List<TypeData>
              type_param = "${type_param.substring(0, 5)}${type_param[5].toUpperCase()}${type_param.substring(6, type_param.length)}";
            }
          } else if (RegExp(r"List<List<.*>>", caseSensitive: false).hasMatch(type_param)) {
            /// set method this List<List<typeData>> to List<List<TypeData>>
            type_param = "${type_param.substring(0, 10)}${type_param[10].toUpperCase()}${type_param.substring(11, type_param.length)}";
          } else {
            /// set method this exampleMethod to ExampleMethod
            type_param = "${type_param[0].toUpperCase()}${type_param.substring(1, type_param.length)}";
          }
        }
        is_found_parameter_function = true;
        if (isTypeData) {
          parameter_function += ("\n      ${type_param}? ${name_param},");
        } else {
          parameter_function += ("\n      ${type_param}? ${name_param},");
        }
        if (isTypeData) {
          parameter_class += "\n          \"${name_param}\": ${name_param},";
        } else {
          if (RegExp(r"List<.*>", caseSensitive: false).hasMatch(type_param)) {
            String list_type_data_class = type_param.replaceAll(RegExp(r".*<|>.*", caseSensitive: false), "");
            if (RegExp(r"List<List<.*>>", caseSensitive: false).hasMatch(type_param)) {
              parameter_class += "\n          \"${name_param}\": ";
              parameter_class += """(${name_param} != null)? ${name_param}.map((e){
                return (e as List).map((res){
                  return ${list_type_data_class}((res as Map)).toJson();
                }).toList();
              }).toList() : null,""";
            } else {
              parameter_class += "\n          \"${name_param}\": ";
              parameter_class += """(${name_param} != null)? ${name_param}.map((e){
                return ${list_type_data_class}((e as Map)).toJson();
              }).toList() : null,""";
            }
          } else {
            parameter_class += "\n          \"${name_param}\": (${name_param} != null)  ? ${name_param}.toJson(): null,";
          }
        }

        // /// detect native dart type data
        // if (RegExp(r"^(String|int|bool|double|List<(String|int|bool|double)>)$", caseSensitive: false).hasMatch(type_param)) {
        //   isTypeData = true;
        // } else {
        //   if (RegExp(r"List<.*>", caseSensitive: false).hasMatch(type_param)) {
        //     /// set method this List<typeData> to List<TypeData>
        //     type_param = "${type_param.substring(0, 5)}${type_param[5].toUpperCase()}${type_param.substring(6, type_param.length)}";
        //   } else {
        //     /// set method this exampleMethod to ExampleMethod
        //     type_param = "${type_param[0].toUpperCase()}${type_param.substring(1, type_param.length)}";
        //   }
        // }
        // is_found_parameter_function = true;
        // if (isTypeData) {
        //   parameter_function += ("\n      ${type_param}? ${name_param},");
        // } else {
        //   parameter_function += ("\n      ${type_param}? ${name_param},");
        // }
        // if (isTypeData) {
        //   parameter_class += "\n          \"${name_param}\": ${name_param},";
        // } else {
        //   parameter_class += "\n          \"${name_param}\": (${name_param} != null)?${name_param}.toJson(): null,";
        // }
      }
      parameter_function += "\n     }";
      var message = """

    /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1${method}.html).
    factory ${name_class}.${method}(${(is_found_parameter_function) ? parameter_function : ""})  {
      try {
        return ${name_class}({
          "@type": "${method}",${parameter_class}
        });
      } catch (e){
        return ${name_class}({
          "@type": "error",
          "error": "\${e}",
          "message": "error method ${method}",
        });
      }
    }

""";
      result_function += message;
    } else {
      RegExpMatch? loop_data = regex.firstMatch(data[i]);
      if (loop_data == null) {
        continue;
      }
      String method = loop_data.group(1) ?? "";
      String param = loop_data.group(3) ?? "";
      String result = loop_data.group(6) ?? "";
      List<String> params = param.split(" ");
      String parameter_function = "{";
      late bool is_found_parameter_function = false;
      String parameter_class = "";
      late Map parameter_function_json = {};
      late Map parameter_class_json = {};

      for (var ii = 0; ii < params.length; ii++) {
        String param_data = params[ii];
        if (param_data.isEmpty) {
          continue;
        }
        if (!param_data.contains(RegExp(r":"))) {
          continue;
        }

        List<String> param_datas = param_data.split(":");
        String name_param = param_datas[0];
        String type_param = param_datas[1].replaceAll(RegExp(r"vector<"), "List<");
        type_param = type_param.replaceAll(RegExp(r"string"), "String");
        type_param = type_param.replaceAll(RegExp(r"int(32|53|64)"), "int");
        type_param = type_param.replaceAll(RegExp(r"bool(False|True)"), "bool");
        type_param = type_param.replaceAll(RegExp(r"Bool"), "bool");
        type_param = type_param.replaceAll(RegExp(r"bytes"), "String");
        type_param = type_param.replaceAll(RegExp(r"Bytes"), "String");
        bool isTypeData = false;

        /// detect native dart type data
        if (RegExp(r"^(String|int|bool|double|List<(String|int|bool|double)>)$", caseSensitive: false).hasMatch(type_param)) {
          isTypeData = true;
        } else {
          if (RegExp(r"List<.*>", caseSensitive: false).hasMatch(type_param)) {
            if (RegExp(r"List<List<.*>>", caseSensitive: false).hasMatch(type_param)) {
              /// set method this List<List<typeData>> to List<List<TypeData>>
              type_param = "${type_param.substring(0, 10)}${type_param[10].toUpperCase()}${type_param.substring(11, type_param.length)}";
            } else {
              /// set method this List<typeData> to List<TypeData>
              type_param = "${type_param.substring(0, 5)}${type_param[5].toUpperCase()}${type_param.substring(6, type_param.length)}";
            }
          } else if (RegExp(r"List<List<.*>>", caseSensitive: false).hasMatch(type_param)) {
            /// set method this List<List<typeData>> to List<List<TypeData>>
            type_param = "${type_param.substring(0, 10)}${type_param[10].toUpperCase()}${type_param.substring(11, type_param.length)}";
          } else {
            /// set method this exampleMethod to ExampleMethod
            type_param = "${type_param[0].toUpperCase()}${type_param.substring(1, type_param.length)}";
          }
        }
        is_found_parameter_function = true;
        if (isTypeData) {
          parameter_function_json[name_param] = type_param;
          parameter_function += ("\n      ${type_param}? ${name_param},");
        } else {
          parameter_function_json[name_param] = type_param;
          parameter_function += ("\n      ${type_param}? ${name_param},");
        }
        if (isTypeData) {
          parameter_class_json[name_param] = name_param;
          parameter_class += "\n          \"${name_param}\": ${name_param},";
        } else {
          if (RegExp(r"List<.*>", caseSensitive: false).hasMatch(type_param)) {
            String list_type_data_class = type_param.replaceAll(RegExp(r".*<|>.*", caseSensitive: false), "");
            if (RegExp(r"List<List<.*>>", caseSensitive: false).hasMatch(type_param)) {
              parameter_class_json[name_param] = """(${name_param} != null)? ${name_param}.map((e){
                return (e as List).map((res){
                  return ${list_type_data_class}((res as Map)).toJson();
                }).toList();
              }).toList() : null
              """;
              parameter_class += "\n          \"${name_param}\": ";
              parameter_class += """(${name_param} != null)? ${name_param}.map((e){
                return (e as List).map((res){
                  return ${list_type_data_class}((res as Map)).toJson();
                }).toList();
              }).toList() : null,""";
            } else {
              parameter_class_json[name_param] = """(${name_param} != null)? ${name_param}.map((e){
                return ${list_type_data_class}((e as Map)).toJson();
              }).toList() : null
              """;
              parameter_class += "\n          \"${name_param}\": ";
              parameter_class += """(${name_param} != null)? ${name_param}.map((e){
                return ${list_type_data_class}((e as Map)).toJson();
              }).toList() : null,""";
            }
          } else {
            parameter_class_json[name_param] = "(${name_param} != null) ?  ${name_param}.toJson(): null";
            parameter_class += "\n          \"${name_param}\": (${name_param} != null)  ? ${name_param}.toJson(): null,";
          }
        }
      }
      parameter_function += "\n     }";

      if (object_data.containsKey(result)) {
        List object_data_methods = (object_data[result]["method"] as List);
        if (!object_data_methods.contains(method)) {
          object_data_methods.add(method);
        }
        Map object_data_class = (object_data[result]["parameter_class"] as Map);
        parameter_class_json.forEach((key, value) {
          object_data_class[key] = value;
        });

        Map object_data_function = (object_data[result]["parameter_function"] as Map);
        parameter_function_json.forEach((key, value) {
          object_data_function[key] = value;
        });
      } else {
        object_data.addAll({
          result: {
            "method": [method],
            "parameter_class": {
              "special_type": method,
              ...parameter_class_json,
            },
            "parameter_function": {
              "special_type": "String",
              ...parameter_function_json,
            }
          },
        });
      }

//       var message = """

//       class ${result} {

//         late Map rawData;
//         ${result}(this.rawData);

//         /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1${method}.html).
//         factory ${result}.create(${(is_found_parameter_function) ? parameter_function : ""})  {
//           try {
//             return ${result}({
//               "@type": "${method}",
//               ${parameter_class}
//             });
//           } catch (e) {
//             return ${result}({
//               "@type": "error",
//               "error": "\${e}",
//               "message": "error method ${method}",
//             });
//           }
//         }

//         Map toMap(){
//             return rawData;
//         }

//         Map toJson(){
//           return rawData;
//         }
//       }

// """;
//       result_class += message;
    }
    //print(method);
    // print(params);
  }

  result_function += """

      /// return origin data without null
      Map toMap(){
        return rawData.removeValueNull();
      }

      /// return origin data without null
      Map toJson(){
        return rawData.removeValueNull();
      }

      /// convert map to json string
      @override
      String toString(){
        return json.encode(rawData.removeValueNull());
      }

  }

""";
  object_data.forEach((key, value) {
    var message = """


    /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1${key}.html).
    class ${key} {
      late Map rawData;

      /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1${key}.html).
      ${key}(this.rawData);

    """;

    List object_data_methods = (object_data[key]["method"] as List);
    Map object_data_class = (object_data[key]["parameter_class"] as Map);
    Map object_data_function = (object_data[key]["parameter_function"] as Map);
    String parameter_class = "";
    late bool is_found_parameter_function = false;
    String parameter_function = "{";
    object_data_class.forEach((key_child, value_child) {
      if (key_child == "special_type") {
        parameter_class += "\n              \"@type\": ${key_child},";
      } else {
        parameter_class += "\n              \"${key_child}\": ${value_child},";
      }
    });

    object_data_function.forEach((value_child, key_child) {
      is_found_parameter_function = true;
      if (value_child == "special_type") {
        if (object_data_class[value_child] != null) {
          parameter_function += "\n         ${key_child} ${value_child} = \"${object_data_class[value_child]}\",";
        } else {
          parameter_function += "\n         ${key_child}? ${value_child},";
        }
      } else {
        parameter_function += "\n         ${key_child}? ${value_child},";
      }
    });
    parameter_function += "\n       }";
    message += """

      /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1${key}.html).
      factory ${key}.create(${(is_found_parameter_function) ? parameter_function : ""})  {
        try {
          return ${key}({${parameter_class}
          });
        } catch (e) {
          return ${key}({
            "@type": "error",
            "error": "\${e}",
            "message": "error method ${key}.create",
          });
        }
      }
      
      """;

    object_data_function.forEach((value_child, key_child) {
      bool isTypeData = false;
      if (value_child == "special_type") {
        message += """

      /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1${key}.html).
      ${key_child}? get ${value_child} {
        try {
          return (rawData["@type"] as ${key_child});
        } catch (e){
          return null;
        }

      }
      
      """;
      } else {
        /// detect native dart type data
        if (RegExp(r"^(String|int|bool|double)$", caseSensitive: false).hasMatch(key_child)) {
          message += """

      /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1${key}.html).
      ${key_child}? get ${value_child} {
        try {
          return (rawData[\"${value_child}\"] as ${key_child});
        } catch (e){
          return null;
        }

      }
      
      """;
        } else if (RegExp(r"^(List<(String|int|bool|double)>)$", caseSensitive: false).hasMatch(key_child)) {
          String list_type_data_class = key_child.replaceAll(RegExp(r".*<|>.*", caseSensitive: false), "");
          message += """


      /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1${key}.html).
      ${key_child} get ${value_child} {
        try {
          return (rawData[\"${value_child}\"] as List).cast<${list_type_data_class}>();
        } catch (e){
          return [].cast<${list_type_data_class}>();
        }

      }
      
      """;
        } else {
          late String type_param = "";
          type_param = key_child;

          String list_type_data_class = type_param.replaceAll(RegExp(r".*<|>.*", caseSensitive: false), "");
          list_type_data_class = "${list_type_data_class[0].toUpperCase()}${list_type_data_class.substring(1, list_type_data_class.length)}";
          if (RegExp(r"List<.*>", caseSensitive: false).hasMatch(key_child)) {
            if (RegExp(r"List<List<.*>>", caseSensitive: false).hasMatch(type_param)) {
              message += """

      /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1${key}.html).
      ${key_child} get ${value_child} {
        try {
          return (rawData[\"${value_child}\"] as List).map((e){
            return (e as List).map((res){
              return ${list_type_data_class}((res as Map));
            }).toList().cast<${list_type_data_class}>();
          }).toList().cast<List<${list_type_data_class}>>();
        } catch (e){
          return [[${list_type_data_class}({
            "@type":"error",
            "error": "\${e}",
            "message": "error at ${key} ${value_child}"
          })]].cast<List<${list_type_data_class}>>();
        }

      }
      
      """;
            } else {
              message += """


      /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1${key}.html).
      ${key_child} get ${value_child} {
        try {
          return (rawData[\"${value_child}\"] as List).map((e){
            return ${list_type_data_class}((e as Map));
          }).toList().cast<${list_type_data_class}>();
        } catch (e){
          return [${list_type_data_class}({
            "@type":"error",
            "error": "\${e}",
            "message": "error at ${key} ${value_child}"
          })].cast<${list_type_data_class}>();
        }

      }
      
      """;
            }
          } else {
            message += """

      /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1${key}.html).
      ${key_child} get ${value_child} {
        try {
          return ${key_child}((rawData[\"${value_child}\"] as Map));
        } catch (e){
          return ${key_child}({
            "@type":"error",
            "error": "\${e}",
            "message": "error at ${key} ${value_child}"
          });
        }

      }
      
      """;
          }
        }
      }
    });

    message += """

      /// return origin data without null
      Map toMap(){
        return rawData.removeValueNull();
      }

      /// return origin data without null
      Map toJson(){
        return rawData.removeValueNull();
      }

      /// convert map to json string
      @override
      String toString(){
        return json.encode(rawData.removeValueNull());
      }

    }

    """;
    result_class += message;
  });

  // File("./function.dart").writeAsStringSync(result_function);
  // File("./object.dart").writeAsStringSync(result_class);
  var msg = """
// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'dart:convert';
extension RemoveValueNullMapExtensions on Map {
  Map removeValueNull() {
    try {
    forEach((key, value) {
      try {
        if (value == null) {
          remove(key);
        }
      } catch (e) {}
    });
    return this;
    }catch (e){
      return this;
    }
  }
}

""";
  msg += result_function;
  msg += result_class;
  File("./scheme.dart").writeAsStringSync(msg);
}
