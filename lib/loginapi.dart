import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
/*import 'package:http/http.dart' as http;
import 'dart:convert';*/

Future<AdminLog> fetchAdminLog() async {
  final response = await http.get(
      'https://raw.githubusercontent.com/kafimuksid/test_api/main/adminlog.json');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return AdminLog.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class AdminLog {
  final String name, email, password;

  AdminLog({this.name, this.email, this.password});

  factory AdminLog.fromJson(Map<String, dynamic> json) {
    return AdminLog(
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }
}
/*Future loginUser(String email, String password) async {
  String url =
      'https://raw.githubusercontent.com/kafimuksid/test_api/main/adminlog.json';
  final response =
      await http.get(url, body: {'email': email, 'password': password});
  var convertedDataJson = jsonDecode(response.body);
  return convertedDataJson;
}*/
