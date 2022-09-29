// import 'dart:convert';
// import 'package:khdma/models/user_model.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../api/user_web_services.dart';
// import 'package:http/http.dart' as http;
// import '../language/app_words.dart';
// import '../page/auth/profile.dart';
// import '../page/auth/profile_OO.dart';
// import '../utils/colors.dart';
//
// class LoginController extends GetxController {
//   var isDataSubmitting = false.obs;
//   var isDataReadingCompleted= false.obs;
//
//
//   void loginWithDetail(
//     String email,
//     String password,
//   ) async {
//     Map<String, dynamic> dataBody = {
//       UserWebServices.USER_EMAIL: email,
//       UserWebServices.USER_PASSWORD: password,
//     };
//     var dataToSend = json.encode(dataBody);
//
//     var response = await http.post(
//       Uri.parse(UserWebServices.signin_api_url),
//       headers: {'Content-Type': 'application/json'},
//       body: dataToSend,
//     );
//
//     if (response.statusCode == 200 || response.statusCode == 201) {
//       isDataSubmitting.value = false;
//       isDataReadingCompleted.value = true;
//       Map<String, dynamic> responseData = jsonDecode(response.body);
//       if (responseData['rMeg'] == "success"){
//         UserDataList.image = User.fromJson(responseData).path!;
//         UserDataList.name = User.fromJson(responseData).name!;
//         UserDataList.address = User.fromJson(responseData).address!;
//         UserDataList.phone = User.fromJson(responseData).phone!;
//         UserDataList.email = User.fromJson(responseData).email!;
//         UserDataList.password = User.fromJson(responseData).password!;
//       }
//       Get.toNamed(Profile.id);
//     } else {
//       isDataSubmitting.value = false;
//       isDataReadingCompleted.value = false;
//       Get.snackbar(
//         AppWords.checkInternet,
//         AppWords.pleaseCheckInternetConnection,
//         backgroundColor: AppColors.icoColor2,
//         colorText: Colors.white,
//       );
//     }
//   }
// }
//
// class UserDataList{
//   static String name = "";
//   static String address = "";
//   static String password = "";
//   static String email = "";
//   static String image = "";
//   static String phone = "";
// }
