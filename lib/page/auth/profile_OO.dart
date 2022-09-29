import 'dart:ffi';

import 'package:khdma/controllers/login_controller.dart';
import 'package:khdma/page/widget/mediat_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/login_controller_original.dart';
import '../../language/app_words.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../widget/app_text_field.dart';
import '../widget/drawers.dart';
import '../widget/main_text.dart';

class Profile extends StatelessWidget {
  LoginController loginController = Get.find();
  static const id = "/Profile";
  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: AppColors.mainColor,
        ),
        drawer: const Drawers(),
        backgroundColor: Colors.white,
        body: const Center(child: Text("Asaad", style: TextStyle(color: Colors.black),))


      // SingleChildScrollView(
      //   physics: const BouncingScrollPhysics(),
      //   child: Column(
      //     children: [
      //       Stack(
      //         children: [
      //           Container(
      //             child: Center(
      //               child: Padding(
      //                 padding:
      //                     EdgeInsets.only(bottom: Dimensions.height100 + 20),
      //                 child: const MainText(
      //                   text: AppWords.profile,
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.w900,
      //                 ),
      //               ),
      //             ),
      //             height: Dimensions.height100 + 50,
      //             width: double.infinity,
      //             decoration: BoxDecoration(
      //               color: AppColors.mainColor,
      //               borderRadius: BorderRadius.only(
      //                 bottomRight: Radius.circular(Dimensions.width45),
      //                 bottomLeft: Radius.circular(Dimensions.width45),
      //               ),
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(
      //               left: Dimensions.height100 + 20,
      //               right: Dimensions.height100 + 20,
      //               top: Dimensions.height20 + 20,
      //             ),
      //             child: Image.asset("assets/images/electrical.jpg"),
      //           ),
      //         ],
      //       ),
      //       Padding(
      //         padding: EdgeInsets.all(Dimensions.height20),
      //         child: Padding(
      //           padding: EdgeInsets.only(
      //             top: Dimensions.height20,
      //           ),
      //           child: Obx(
      //             () =>
      //             loginController.isDataReadingCompleted.value == true
      //                 ? Column(
      //                     children: [
      //                       Center(
      //                         child: Padding(
      //                           padding: EdgeInsets.only(
      //                             left: Dimensions.width20,
      //                             right: Dimensions.width20,
      //                           ),
      //                           child: MediatText(
      //                             text: UserDataList.name,
      //                             color: Colors.black,
      //                           ),
      //                         ),
      //                       ),
      //                       AppTextField(
      //                         // textController: registerController.nameController,
      //                         hintText: UserDataList.name,
      //
      //                         icon: Icons.person,
      //                         erroeText: "Enter your name",
      //                         iconColor: AppColors.mainColor,
      //                         hintTextColor: Colors.black,
      //                         valueChange: () {},
      //                       ),
      //                       SizedBox(
      //                         height: Dimensions.height20,
      //                       ),
      //                       AppTextField(
      //                         // textController: registerController.addressController,
      //                         hintText: UserDataList.address,
      //                         iconColor: AppColors.mainColor,
      //                         hintTextColor: AppColors.icoColor2,
      //                         icon: Icons.map,
      //                         valueChange: () {},
      //                         erroeText: "",
      //                       ),
      //                       SizedBox(
      //                         height: Dimensions.height20,
      //                       ),
      //                       AppTextField(
      //                         keyboardKey: TextInputType.emailAddress,
      //                         // textController: registerController.emailController,
      //                         hintText: UserDataList.email,
      //                         icon: Icons.email,
      //                         iconColor: AppColors.mainColor,
      //                         hintTextColor: AppColors.icoColor2,
      //                         valueChange: () {},
      //                         erroeText: "You @",
      //                       ),
      //                       SizedBox(
      //                         height: Dimensions.height20,
      //                       ),
      //                       AppTextField(
      //                           keyboardKey: TextInputType.visiblePassword,
      //                           // textController: registerController.passwordController,
      //                           hintText: UserDataList.password,
      //                           icon: Icons.password_sharp,
      //                           iconColor: AppColors.mainColor,
      //                           hintTextColor: AppColors.icoColor2,
      //                           valueChange: () {},
      //                           erroeText: "You 8"),
      //                       SizedBox(
      //                         height: Dimensions.height20,
      //                       ),
      //                       AppTextField(
      //                         keyboardKey: TextInputType.number,
      //                         // textController: registerController.phoneController,
      //                         hintText: UserDataList.phone,
      //                         icon: Icons.phone,
      //                         iconColor: AppColors.mainColor,
      //                         hintTextColor: AppColors.icoColor2,
      //                         valueChange: () {},
      //                         erroeText: "Nummer",
      //                       ),
      //                       SizedBox(
      //                         height: Dimensions.height20,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           GestureDetector(
      //                             onTap: () {},
      //                             child: Container(
      //                               width: Dimensions.screenWidth / 2.50,
      //                               height: Dimensions.screenHeight / 15,
      //                               decoration: BoxDecoration(
      //                                   borderRadius: BorderRadius.circular(
      //                                       Dimensions.radius5),
      //                                   color: AppColors.mainColor),
      //                               child: Padding(
      //                                 padding: EdgeInsets.all(
      //                                     Dimensions.height20 - 10),
      //                                 child: Row(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.center,
      //                                   children: [
      //                                     const Icon(
      //                                       Icons.update,
      //                                       color: Colors.white,
      //                                     ),
      //                                     MainText(
      //                                       text: AppWords.update,
      //                                       size: Dimensions.font20,
      //                                       color: Colors.white,
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                           GestureDetector(
      //                             onTap: () {},
      //                             child: Container(
      //                               width: Dimensions.screenWidth / 2.50,
      //                               height: Dimensions.screenHeight / 15,
      //                               decoration: BoxDecoration(
      //                                   borderRadius: BorderRadius.circular(
      //                                       Dimensions.radius5),
      //                                   color: AppColors.mainColor),
      //                               child: Padding(
      //                                 padding: EdgeInsets.all(
      //                                     Dimensions.height20 - 10),
      //                                 child: Row(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.center,
      //                                   children: [
      //                                     const Icon(
      //                                       Icons.bookmark_remove_rounded,
      //                                       color: Colors.white,
      //                                     ),
      //                                     MainText(
      //                                       text: AppWords.unBooking,
      //                                       size: Dimensions.font20,
      //                                       color: Colors.white,
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ],
      //                   )
      //                 : const CircularProgressIndicator(),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}