import 'package:api_demo/screen/sign_up/sign_up_controller.dart';
import 'package:api_demo/screen/sign_up/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(
          top: 50,left: 15,right: 15
        ),
        child: Column(
          children: [
            nameText,
            SizedBox(
              height: 10,
            ),
            emailText,
            SizedBox(
              height: 10,
            ),
            passText,
            SizedBox(
              height: 30,
            ),
            loginButton
          ],
        ),
      ),
    );
  }
}
