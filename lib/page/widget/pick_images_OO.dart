// import 'dart:html';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../controllers/register_controller_original.dart';
// import '../../utils/colors.dart';
// import '../../utils/dimensions.dart';
//
// class SelectPic extends StatelessWidget {
//   SelectPic({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(Dimensions.width20),
//       child: GetBuilder<RegisterController>(builder: (imageController){
//         return Stack(
//           children: [
//             CircleAvatar(
//               backgroundImage: imageController.pickedFile != null ?
//               Image.file(File
//                 (imageController.pickedFile!.path))
//                   :
//               AssetImage("assets/images/user.jpg"),
//               radius: Dimensions.height45 + 15,
//             ),
//             Positioned(
//               bottom: 0,
//               left: Dimensions.width45,
//               child: InkWell(
//                 child: Icon(
//                   Icons.camera,
//                   color: AppColors.mainColor,
//                   size: Dimensions.height45 - 15,
//                 ),
//                 onTap: () => imageController.pickedImage(),
//               ),
//             ),
//           ],
//         );
//       },),
//     );
//   }
// }
