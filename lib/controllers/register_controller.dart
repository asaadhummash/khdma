// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
// import 'package:logger/logger.dart';
// import '../api/user_web_services.dart';
// import '../language/app_words.dart';
// import '../utils/colors.dart';
// import 'package:http/http.dart' as http;
//
// class RegisterController extends GetxController {
//   Logger logger = Logger();
//
//   var selectedRoleId = "0".obs;
//
//   final isVisible = false.obs;
//
//   var isLoading = false.obs;
//
//   var isProfileImagePath = false.obs;
//   var profilePicPath = "".obs;
//   var profileImageBase64;
//
//   var selectJob = "".obs;
//   var role = "".obs;
//
//   onChangeRole (var role){
//     role.value = role;
//   }
//
//   onChangeJob (var job){
//     selectJob.value = job;
//   }
//
//   String userName = "";
//   String userEmail = "";
//   String userPassword = "";
//   String userPhone = "";
//   String userAddress = "";
//   // String userRolE = "";
//   // String userTypeJobId = "";
//
//
//
//   void signUpUser(
//     String name,
//     String email,
//     String password,
//     String phone,
//     String address,
//     // String roll,
//     // String type_job_id,
//   ) {
//     // if (isProfileImagePath.value == false)
//     if (1 == 1)
//     {
//       Get.snackbar(AppWords.image, AppWords.pleasePickImage,
//           backgroundColor: AppColors.icoColor2, colorText: Colors.white);
//
//       userName = name;
//       userAddress = address;
//       userEmail = email;
//       userPassword = password;
//       userPhone = phone;
//     }
//     else
//     {
//       userName = name;
//       userAddress = address;
//       userEmail = email;
//       userPassword = password;
//       userPhone = phone;
//       // userRoll = roll;
//       // userTypeJobId = type_job_id,
//       sendUserDataServer();
//     }
//   }
//
//   void setProfileImagePath(String path) {
//     profilePicPath.value = path;
//     isProfileImagePath.value = true;
//
//     final bytes = File(profilePicPath.value).readAsBytesSync();
//     profileImageBase64 = base64.encode(bytes);
//   }
//
//   void sendUserDataServer() async {
//     Map<String, dynamic> dataBody = {
//       UserWebServices.PROFILE_IMAGE: profileImageBase64,
//       UserWebServices.USER_NAME: userName,
//       UserWebServices.USER_EMAIL: userEmail,
//       UserWebServices.USER_PASSWORD: userPassword,
//       UserWebServices.USER_PHONE: userPhone,
//       UserWebServices.USER_ADDRESS: userAddress,
//       // UserWebServices.USER_TYPE_JOB_ID: userTypeJobId,
//       // UserWebServices.USER_ROLE: userRoll,
//     };
//     var dataToSend = json.encode(dataBody);
//     logger.i("${dataToSend}");
//
//     var response = await http.post(
//       Uri.parse(UserWebServices.signup_api_url),
//       body: dataToSend,
//       );
//
//     print(response.body);
//   }
//
//   // TextEditingController nameController = TextEditingController();
//   // TextEditingController emailController = TextEditingController();
//   // TextEditingController addressController = TextEditingController();
//   // TextEditingController phoneController = TextEditingController();
//   // TextEditingController passwordController = TextEditingController();
//   // RxString roll = "".obs;
//   // RxString type_job_id = "".obs;
//
//   // final registerFormKey = GlobalKey<FormState>();
//
//   // final storage = const FlutterSecureStorage();
//   // late TextEditingController nameController,
//   //     emailController,
//   //     addressController,
//   //     passwordController,
//   //     phoneController;
//
//   // RxString type_job_id = "".obs;
//   // String name = '', email = '', address = '', password = '', phone = '';
//
//   // @override
//   // void onInit() {
//   //   nameController = TextEditingController();
//   //   emailController = TextEditingController();
//   //   addressController = TextEditingController();
//   //   phoneController = TextEditingController();
//   //   passwordController = TextEditingController();
//   //   roll = RxString(roll.value);
//   //   type_job_id = RxString(type_job_id.value);
//   //   super.onInit();
//   // }
//
//   // @override
//   // void dispose() {
//   //   nameController.dispose();
//   //   emailController.dispose();
//   //   addressController.dispose();
//   //   phoneController.dispose();
//   //   passwordController.dispose();
//   //   super.dispose();
//   // }
//
//   // String? validateEmail(String value) {
//   //   if (!GetUtils.isEmail(value)) {
//   //     return "This is not Email";
//   //   } else {
//   //     return null;
//   //   }
//   // }
//
//   // String? validatePassword(String value) {
//   //   if (value.length <= 8) {
//   //     return "At less 8 letter";
//   //   } else {
//   //     return null;
//   //   }
//   // }
//
//   // String? validatePhone(String value) {
//   //   if (value.length == 9) {
//   //     return "At less 9 Number";
//   //   } else {
//   //     return null;
//   //   }
//   // }
//
//   // doRegister() async {
//   //   bool isValidate = registerFormKey.currentState!.validate();
//   //   if (isValidate) {
//   //     isLoading(true);
//   //     try {
//   //       var data = AuthApi.register(
//   //         name: nameController.text,
//   //         password: passwordController.text,
//   //         email: emailController.text,
//   //         phone: phoneController.text,
//   //         address: addressController.text,
//   //         role: roll.value,
//   //         typeJobId: type_job_id.value,
//   //       );
//   //       if (data != null) {
//   //         // await storage.write(key: "name", value: data.user.name);
//   //         // await storage.write(key: "token", value: data.token);
//   //         logger.e(data);
//   //         registerFormKey.currentState?.save();
//   //         // Get.toNamed(SignInPage.id);
//   //       } else {
//   //         Get.snackbar("Register", "Some think error",
//   //             backgroundColor: AppColors.icoColor2, colorText: Colors.white);
//   //       }
//   //     } finally {
//   //       isLoading(false);
//   //     }
//   //   }
//   // }
//
//   //
//   // void register() async {
//   //   AuthApi.register(
//   //     name: nameController.text,
//   //     email: emailController.text,
//   //     password: passwordController.text,
//   //     phone: phoneController.text,
//   //     address: addressController.text,
//   //     typeJobId: type_job_id.value,
//   //     role: roll.value,
//   //   );
//   // }
// }
