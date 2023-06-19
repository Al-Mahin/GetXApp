import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/View%20Screen/home_screen.dart';
import 'package:getxapp/utils/api_endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class RegistrationController extends GetxController {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerwithemail() async {
    try {
      var headers = {"Content-Type": 'application/json'};
      var url = Uri.parse(
          ApiEndpoints.baseUrl + ApiEndpoints.authEndPoints.registeremail);
      Map body = {
        'name': namecontroller.text,
        'email': emailcontroller.text,
        'password': passwordcontroller.text,
      };

      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        print(response.body);
        final json = jsonDecode(response.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          print('My token is  $token');
          final SharedPreferences? prefs = await _prefs;
          await prefs?.setString('token', token);
          namecontroller.clear();
          emailcontroller.clear();
          passwordcontroller.clear();
          Get.off(HomeScreen());
        } else {
          throw jsonDecode(response.body)['message'] ?? 'Unknown Err';
        }
      } else {
        throw jsonDecode(response.body)['message'] ??
            'Unknown Error has occured';
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
