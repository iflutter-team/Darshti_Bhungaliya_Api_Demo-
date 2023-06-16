import 'package:api_demo/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  TextEditingController loginemailController = TextEditingController();
  TextEditingController loginpassController = TextEditingController();
  TextEditingController loginnameController = TextEditingController();
  void button(){
    Get.to(HomeScreen());
  }
}