import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/controllers/login_controller.dart';
import 'package:getxapp/controllers/registration_controller.dart';
import 'package:getxapp/widget/custom_textformfield.dart';
import 'package:getxapp/widget/submit_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  RegistrationController registrationController =
      Get.put(RegistrationController());
  LoginController loginController = Get.put(LoginController());
  var islogin = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(36),
          child: Center(
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text('Welcome'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        color: !islogin.value ? Colors.white : Colors.amber,
                        onPressed: () {
                          islogin.value = false;
                        },
                        child: Text('Register'),
                      ),
                      MaterialButton(
                        color: islogin.value ? Colors.white : Colors.amber,
                        onPressed: () {
                          islogin.value = true;
                        },
                        child: Text('Login'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  islogin.value ? LoginWidget() : RegistrationWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///
///registration
class RegistrationWidget extends StatelessWidget {
  const RegistrationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
            'username', RegistrationController().namecontroller),
        SizedBox(
          height: 20,
        ),
        CustomTextFormField('email', RegistrationController().emailcontroller),
        SizedBox(
          height: 20,
        ),
        CustomTextFormField(
            'password', RegistrationController().passwordcontroller),
        SizedBox(
          height: 20,
        ),
        SubmitButton(
            onPressed: () {
              RegistrationController().registerwithemail();
            },
            title: 'Register')
      ],
    );
  }
}

///
///login
class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField('email', LoginController().emailcontroller),
        SizedBox(
          height: 20,
        ),
        CustomTextFormField('password', LoginController().passwordcontroller),
        SizedBox(
          height: 20,
        ),
        SubmitButton(
            onPressed: () {
              LoginController().loginwithemail();
            },
            title: 'Login')
      ],
    );
  }
}
