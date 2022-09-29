// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:jobs/controllers/register_controller.dart';
// import 'package:jobs/language/app_words.dart';
// import 'package:jobs/page/widget/main_text.dart';
// import 'package:jobs/page/widget/pick_images.dart';
// import 'package:jobs/page/widget/select_roll.dart';
// import 'package:jobs/page/widget/small_text.dart';
// import '../../controllers/type_jobs_controller.dart';
// import '../../utils/colors.dart';
// import '../../utils/dimensions.dart';
// import '../widget/app_text_field.dart';
// import '../widget/drop_down_menu.dart';

// class SignUpPage extends StatefulWidget {
//   static const id = "/SignUpPage";

//   const SignUpPage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   final RegisterController registerController = Get.put(RegisterController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: GetBuilder<TypeJobsController>(
//           init: TypeJobsController(),
//           builder: (typeJobsController) => Column(
//             children: [
//               Container(
//                 height: Dimensions.screenHeight * 0.25,
//                 padding: EdgeInsets.all(Dimensions.height45+15),
//                 child: Center(
//                   child: Image.asset("assets/images/logo/logo.png"),
//                 ),
//               ),
//               Form(
//                 key: registerController.registerFormKey,
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 child: Column(
//                   children: [
//                     AppTextField(
//                         textController: registerController.nameController,
//                         onSaved: (v) {
//                           registerController.name = v!;
//                         },
//                         hintText: "Full Name",
//                         icon: Icons.person),
//                     SizedBox(
//                       height: Dimensions.height20,
//                     ),
//                     AppTextField(
//                         textController: registerController.addressController,
//                         onSaved: (v) {
//                           registerController.name = v!;
//                         },
//                         hintText: "Address",
//                         icon: Icons.map),
//                     SizedBox(
//                       height: Dimensions.height20,
//                     ),
//                     AppTextField(
//                         validator: (v) {
//                           registerController.validateEmail(v!);
//                         },
//                         textController: registerController.emailController,
//                         onSaved: (v) {
//                           registerController.email = v!;
//                         },
//                         hintText: "Email",
//                         icon: Icons.email),
//                     SizedBox(
//                       height: Dimensions.height20,
//                     ),
//                     AppTextField(
//                         validator: (v) {
//                           registerController.validatePassword(v!);
//                         },
//                         onSaved: (v) {
//                           registerController.password = v!;
//                         },
//                         textController: registerController.passwordController,
//                         hintText: "Password",
//                         icon: Icons.password_sharp),
//                     SizedBox(
//                       height: Dimensions.height20,
//                     ),
//                     AppTextField(
//                       validator: (v) {
//                         registerController.validatePhone(v!);
//                       },
//                       textController: registerController.phoneController,
//                       onSaved: (v) {
//                         registerController.phone = v!;
//                       },
//                       hintText: "Phone",
//                       icon: Icons.phone,
//                     ),
//                     SizedBox(
//                       height: Dimensions.height20,
//                     ),
//                     Obx(
//                       () => SelectRoll(
//                         onTapRoll: (value) => onTapRoll(value),
//                         rollValue: registerController.roll.value,
//                       ),
//                     ),
//                     SizedBox(
//                       height: Dimensions.height20,
//                     ),
//                     Obx(() {
//                       if (registerController.isLoading.value) {
//                         return const Center(
//                           child: CircularProgressIndicator(),
//                         );
//                       } else {
//                         return Visibility(
//                           visible: registerController.isVisible.value,
//                           maintainSize: false,
//                           child: Padding(
//                             padding: EdgeInsets.only(
//                               left: Dimensions.width20,
//                               right: Dimensions.width20,
//                             ),
//                             child: DropDownMenu(
//                               dropdownColor: Get.theme.scaffoldBackgroundColor,
//                               keyName: AppWords.appName,
//                               initialValue: typeJobsController
//                                   .typeJobsList[0].name
//                                   .toString(),
//                               list: typeJobsController.typeJobsListString,
//                               onChange: (value) {
//                                 registerController.type_job_id.value = value!;
//                               },
//                             ),
//                           ),
//                         );
//                       }
//                     }),
//                     SizedBox(
//                       height: Dimensions.height20,
//                     ),
//                     // PickedImages(),
//                     SizedBox(
//                       height: Dimensions.height20,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         registerController.doRegister();
//                       },
//                       child: Container(
//                         width: Dimensions.screenWidth / 2,
//                         height: Dimensions.screenHeight / 15,
//                         decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.circular(Dimensions.radius5),
//                             color: AppColors.mainColor),
//                         child: Center(
//                           child: MainText(
//                             text: "Sign Up",
//                             size: Dimensions.font20 + Dimensions.font20 / 2,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: Dimensions.height20 - 10,
//                     ),
//                     RichText(
//                       text: TextSpan(
//                         // recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
//                         text: "Have an account already?",
//                         style: TextStyle(
//                             color: Colors.grey[500],
//                             fontSize: Dimensions.font20),
//                         children: [
//                           TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () => Get.back(),
//                             text: "Sign in",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                               fontSize: Dimensions.font20,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void onTapRoll(bool value) {
//     registerController.roll.value = value ? "Cliend" : "Worker";
//     registerController.isVisible.value = value;
//   }
// }
