import 'dart:convert';
import 'package:http/http.dart' as http;

import './login_info.dart';

// ignore: camel_case_types
class LoginApiManager {
  Future<LoginModel> getAdminLog() async {
    var client = http.Client();
    var adminLoginModel;
    var string =
        "https://raw.githubusercontent.com/kafimuksid/test_api/main/adminlog.json";
    try {
      var response = await client.get(string);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        adminLoginModel = LoginModel.fromJson(jsonMap);
        print(adminLoginModel);
      }
    } catch (Exception) {
      return adminLoginModel;
    }
    return adminLoginModel;
  }
}
