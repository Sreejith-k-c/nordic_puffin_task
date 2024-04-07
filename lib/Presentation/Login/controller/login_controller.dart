import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends ChangeNotifier {
  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController passwordController =
      TextEditingController();

  String kemail = "abc@gmail.com";
  String kpassword = "123";

  Future<bool> checkValidation(
      {required String email, required String password}) async {
    final storeData = await SharedPreferences.getInstance();

    if (kemail == email && kpassword == password) {
      storeData.setBool("isLogin", true);
      return true;
    } else {
      return false;
    }
  }
}
