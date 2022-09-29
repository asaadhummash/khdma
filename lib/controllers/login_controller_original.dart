import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import '../api/auth_api.dart';
import '../page/auth/profile.dart';
import '../utils/colors.dart';

class LoginController extends GetxController {
  Logger logger = Logger();
  var isDataReadingCompleted= false.obs;

  var isLoading = false.obs;
  final loginFormKey = GlobalKey<FormState>();
  // final storage = const FlutterSecureStorage();
  List<String> getAllUser =[];
  late TextEditingController emailController, passwordController;
  String email = '', password = '';

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  doLogin() async {
    bool isValidate = loginFormKey.currentState!.validate();

    if (isValidate) {
      isLoading(true);
      try {
        var data = AuthApi.login(
          password: passwordController.text,
          email: emailController.text,
        );
        if (data != null) {
          // await storage.write(key: "name", value: data.user.name);
          // await storage.write(key: "name", value: data.remember_token);
          logger.i("$data");
          loginFormKey.currentState!.save();
          Get.to(Profile());
        } else {
          Get.snackbar("Login", "Some think error",
              backgroundColor: AppColors.icoColor2, colorText: Colors.white);
        }
      } finally {
        isLoading(false);
      }
    }
  }
}
