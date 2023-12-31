import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/utils/api_endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> loginwithemail() async {
    try {
      var headers = {"Content-Type": 'application/json'};
      var url = Uri.parse(
          ApiEndpoints.baseUrl + ApiEndpoints.authEndPoints.loginemail);
      Map body = {
        'email': emailcontroller.text,
        'password': passwordcontroller.text,
      };

      http.Response response =
          await http.post(url, body: json.encode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          print(token);
          final SharedPreferences? prefs = await _prefs;
          await prefs?.setString('token', token);
          emailcontroller.clear();
          passwordcontroller.clear();
        } else {
          throw jsonDecode(response.body)['message'] ?? 'Unknown Error occured';
        }
      } else {
        throw jsonDecode(response.body)['message'] ?? 'Unknown Error occured';
      }
    } catch (e) {
      Get.back();
      showDialog(
        context: Get.context!,
        builder: (context) {
          return SimpleDialog(
            title: Text('Error'),
            children: [Text(e.toString())],
          );
        },
      );
    }
  }
}
