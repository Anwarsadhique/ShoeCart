// import 'dart:convert';
// import 'dart:developer';
// import 'package:http/http.dart' as http;

// class API {
//   // GET
//   static Future<http.Response> get(String url) async {
//     return await http.get(Uri.parse(url));
//   }

//   // POST
//   static Future<dynamic> post(String url, Map<String, dynamic> postData) async {
//     postData.putIfAbsent("system_id",
//         () => "QJ3ATPD6RNMXWNCKKZAWV21RC87J0C690PB9SBV809CMPBDFDH20");

//     final response = await http.post(
//       Uri.parse(url),
//       body: jsonEncode(postData),
//       headers: {"Content-Type": "application/json"},
//     );

//     try {
//       if (response.statusCode == 200) {
//         return Success(
//             code: response.statusCode, response: jsonDecode(response.body));
//       } else {
//         log(response.body);
//         return Error(
//           code: response.statusCode,
//           response: response.body,
//           error: "Unknown error occurred",
//         );
//       }
//     } catch (ex) {
//       log(ex.toString());
//       return Error(
//         code: response.statusCode,
//         response: response.body,
//         error: "Unknown error occurred",
//       );
//     }
//   }
// }

// class Success {
//   final int code;
//   final dynamic response;

//   Success({required this.code, required this.response});
// }

// class EndPoints {
//   static const String BASE_URL = "https://screl.info:2200/v1";
//   static const String CATEGORY_LIST = '$BASE_URL/itemlistbyoffset_sizerun';
  
// }