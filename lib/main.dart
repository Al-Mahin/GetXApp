import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/View%20Screen/auth_screen.dart';
import 'package:getxapp/View%20Screen/graphql_screen.dart';
import 'package:getxapp/View%20Screen/home_screen.dart';
import 'package:getxapp/View%20Screen/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //home: MainScreen(),
      initialRoute: "/",
      getPages: [
        // GetPage(
        //   name: "/",
        //   page: () => WelcomePage(),
        // ),
        // GetPage(
        //   name: "/",
        //   page: () => RegistrationWidget(),
        // ),
        GetPage(
          name: "/",
          page: () => AuthScreen(),
        ),
        // GetPage(
        //   name: "/",
        //   page: () => const HomeScreen(),
        // ),
        // GetPage(
        //   name: "/",
        //   page: () => const GraphQLScreen(),
        // ),
      ],

      //home: Widget040(),
    );
  }
}
