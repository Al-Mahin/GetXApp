







































// // import 'package:flutter/material.dart';

// // class HomeScreen extends StatelessWidget {
// //   const HomeScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const Placeholder();
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getxapp/View%20Screen/main_screen.dart';
// import 'package:getxapp/widget/answer_button.dart';
// import 'package:getxapp/widget/styled_text.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:getxapp/controllers/registration_controller.dart';

// import 'package:http/http.dart' as http;

// class WelcomePage extends StatelessWidget {
//   WelcomePage({super.key});
//   // final TextEditingController _nameController = TextEditingController();
//   // final TextEditingController _passController = TextEditingController();

//   ///
//   /// post data function
//   postData({
//     required BuildContext context,
//     required String userName,
//     required String password,
//   }) async {
//     try {
//       var response =
//           await http.post(Uri.parse('https://dummyjson.com/auth/login'), body: {
//         "username": userName,
//         "password": password,
//       });
//       print(response.statusCode);
//       if (response.statusCode == 200) {
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => MainScreen(),
//         ));
//       } else {
//         showSnackBar(
//           message: 'Login failed, please try again',
//           context: context,
//         );
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   changeAuth() {
//     var value = false;
//   }

//   bool a = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Color.fromARGB(255, 146, 106, 211),
//                 Color.fromARGB(253, 199, 173, 247),
//               ],
//             ),
//           ),
//           child: a
//               ? Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       flex: 2,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 32),
//                         child: Text("Welcome!",
//                             style: GoogleFonts.montserrat(
//                                 fontSize: 30,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white)),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: Padding(
//                           padding: const EdgeInsets.only(left: 32),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               changeAuth();
//                             },
//                             child: Text("Switch"),
//                           )),
//                     ),

//                     ///
//                     /// user name text form field
//                     Expanded(
//                       flex: 3,
//                       child: Padding(
//                         padding: const EdgeInsets.all(32.0),
//                         child: TextFormField(
//                           controller:
//                               RegistrationController().usernamecontroller,
//                           decoration: InputDecoration(
//                               enabledBorder: const UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                       width: 2, color: Colors.white)),
//                               hintText: "Username",
//                               hintStyle: GoogleFonts.montserrat(
//                                   color: Colors.white, fontSize: 17)),
//                         ),
//                       ),
//                     ),

//                     ///
//                     ///email text form field
//                     Expanded(
//                       flex: 3,
//                       child: Padding(
//                         padding: const EdgeInsets.all(32.0),
//                         child: TextFormField(
//                           controller: RegistrationController().emailcontroller,
//                           decoration: InputDecoration(
//                               enabledBorder: const UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                       width: 2, color: Colors.white)),
//                               hintText: "Email",
//                               hintStyle: GoogleFonts.montserrat(
//                                   color: Colors.white, fontSize: 17)),
//                         ),
//                       ),
//                     ),

//                     ///
//                     /// password text form field
//                     Expanded(
//                       flex: 3,
//                       child: Padding(
//                         padding: const EdgeInsets.all(32.0),
//                         child: TextFormField(
//                           controller:
//                               RegistrationController().passwordcontroller,
//                           decoration: InputDecoration(
//                               enabledBorder: const UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                       width: 2, color: Colors.white)),
//                               hintText: "Password",
//                               hintStyle: GoogleFonts.montserrat(
//                                   color: Colors.white, fontSize: 17)),
//                         ),
//                       ),
//                     ),

//                     ///
//                     /// submit button
//                     Expanded(
//                       flex: 1,
//                       child: Center(
//                         child: AnswerButton(
//                           answertext: a ? 'Log in' : "Registration",
//                           ontap: (() {
//                             print(RegistrationController()
//                                 .usernamecontroller
//                                 .text);
//                             print(RegistrationController()
//                                 .passwordcontroller
//                                 .text);
//                             postData(
//                               context: context,
//                               userName: RegistrationController()
//                                   .usernamecontroller
//                                   .text,
//                               password: RegistrationController()
//                                   .passwordcontroller
//                                   .text,
//                             );
//                           }),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Center(
//                         child: AnswerButton(
//                           answertext: 'Dont have an account',
//                           ontap: (() {
//                             a = !a;
//                           }),
//                         ),
//                       ),
//                     ),

//                     // Expanded(
//                     //   flex: 1,
//                     //   child: Center(
//                     //     child: AnswerButton(
//                     //       answertext: 'Register',
//                     //       ontap: (() {
//                     //         print(RegistrationController().usernamecontroller.text);
//                     //         print(RegistrationController().passwordcontroller.text);
//                     //         postData(
//                     //           context: context,
//                     //           userName:
//                     //               RegistrationController().usernamecontroller.text,
//                     //           password:
//                     //               RegistrationController().passwordcontroller.text,
//                     //         );
//                     //       }),
//                     //     ),
//                     //   ),
//                     // ),
//                   ],
//                 )
//               : Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       flex: 2,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 32),
//                         child: Text("Welcome!",
//                             style: GoogleFonts.montserrat(
//                                 fontSize: 30,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white)),
//                       ),
//                     ),

//                     ///
//                     /// user name text form field
//                     Expanded(
//                       flex: 3,
//                       child: Padding(
//                         padding: const EdgeInsets.all(32.0),
//                         child: TextFormField(
//                           controller:
//                               RegistrationController().usernamecontroller,
//                           decoration: InputDecoration(
//                               enabledBorder: const UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                       width: 2, color: Colors.white)),
//                               hintText: "Username",
//                               hintStyle: GoogleFonts.montserrat(
//                                   color: Colors.white, fontSize: 17)),
//                         ),
//                       ),
//                     ),

//                     ///
//                     ///email text form field
//                     Expanded(
//                       flex: 3,
//                       child: Padding(
//                         padding: const EdgeInsets.all(32.0),
//                         child: TextFormField(
//                           controller: RegistrationController().emailcontroller,
//                           decoration: InputDecoration(
//                               enabledBorder: const UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                       width: 2, color: Colors.white)),
//                               hintText: "Email",
//                               hintStyle: GoogleFonts.montserrat(
//                                   color: Colors.white, fontSize: 17)),
//                         ),
//                       ),
//                     ),

//                     ///
//                     /// password text form field
//                     Expanded(
//                       flex: 3,
//                       child: Padding(
//                         padding: const EdgeInsets.all(32.0),
//                         child: TextFormField(
//                           controller:
//                               RegistrationController().passwordcontroller,
//                           decoration: InputDecoration(
//                               enabledBorder: const UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                       width: 2, color: Colors.white)),
//                               hintText: "Password",
//                               hintStyle: GoogleFonts.montserrat(
//                                   color: Colors.white, fontSize: 17)),
//                         ),
//                       ),
//                     ),

//                     ///
//                     /// submit button
//                     Expanded(
//                       flex: 1,
//                       child: Center(
//                         child: AnswerButton(
//                           answertext: a! ? "Login" : 'Register',
//                           ontap: (() {
//                             print(RegistrationController()
//                                 .usernamecontroller
//                                 .text);
//                             print(RegistrationController()
//                                 .passwordcontroller
//                                 .text);
//                             postData(
//                               context: context,
//                               userName: RegistrationController()
//                                   .usernamecontroller
//                                   .text,
//                               password: RegistrationController()
//                                   .passwordcontroller
//                                   .text,
//                             );
//                           }),
//                         ),
//                       ),
//                     ),

//                     // Expanded(
//                     //   flex: 1,
//                     //   child: Center(
//                     //     child: AnswerButton(
//                     //       answertext: 'Register',
//                     //       ontap: (() {
//                     //         print(RegistrationController().usernamecontroller.text);
//                     //         print(RegistrationController().passwordcontroller.text);
//                     //         postData(
//                     //           context: context,
//                     //           userName:
//                     //               RegistrationController().usernamecontroller.text,
//                     //           password:
//                     //               RegistrationController().passwordcontroller.text,
//                     //         );
//                     //       }),
//                     //     ),
//                     //   ),
//                     // ),
//                   ],
//                 ),
//         ),
//       ),
//     );
//   }
// }

// void showSnackBar({
//   required String message,
//   required BuildContext context,
// }) {
//   final scaffold = ScaffoldMessenger.of(context);
//   scaffold.showSnackBar(
//     SnackBar(
//       duration: const Duration(
//         milliseconds: 300,
//       ),
//       backgroundColor: Colors.blue,
//       content: Text(message),
//       action: SnackBarAction(
//         label: 'OK',
//         onPressed: scaffold.hideCurrentSnackBar,
//         textColor: Colors.white,
//       ),
//       behavior: SnackBarBehavior.floating,
//       margin: const EdgeInsets.only(
//         bottom: 10,
//         right: 20,
//         left: 20,
//       ),
//     ),
//   );
// }
