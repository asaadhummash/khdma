import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../controllers/register_controller_original.dart';
import '../../language/app_words.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import 'main_text.dart';

class SelectPic extends StatelessWidget {
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  RegisterController registerController = Get.find();

  SelectPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.width20),
      child: Stack(
        children: [
          Obx(
            () => CircleAvatar(
              backgroundImage:
                  registerController.isProfileImagePath.value == true
                      ? FileImage(File(registerController.profilePicPath.value))
                          as ImageProvider
                      : const AssetImage("assets/images/user.jpg"),
              radius: Dimensions.height45 + 15,
            ),
          ),
          Positioned(
            bottom: 0,
            left: Dimensions.width45,
            child: InkWell(
              child: Icon(
                Icons.camera,
                color: AppColors.mainColor,
                size: Dimensions.height45 - 15,
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => bottomSheet(context),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensions.height20),
            child: const MainText(
              text: AppWords.chooseProfileImage,
            ),
          ),
          SizedBox(
            height: Dimensions.height45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  takePhoto(ImageSource.gallery);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.image,
                      color: AppColors.mainColor,
                      size: Dimensions.height45,
                    ),
                    SizedBox(
                      height: Dimensions.height20 - 10,
                    ),
                    const MainText(
                      text: "Gallery",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Dimensions.width45,
              ),
              InkWell(
                onTap: () {
                  takePhoto(ImageSource.camera);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.camera,
                      color: AppColors.mainColor,
                      size: Dimensions.height45,
                    ),
                    SizedBox(
                      height: Dimensions.height20 - 10,
                    ),
                    const MainText(
                      text: "Camera",
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> takePhoto(ImageSource source) async {
    try{
      final pickedImages = await imagePicker.pickImage(source: source, imageQuality: 100);

      pickedFile = File(pickedImages!.path);

      registerController.setProfileImagePath(pickedFile!.path);

      Get.back();

      print(pickedFile);
    }catch(err){
      print("err takePhoto: ${err}");
    }
  }
}
