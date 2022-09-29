import 'package:flutter/material.dart';
import '../../language/app_words.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../widget/drawers.dart';
import '../widget/icon_social_media.dart';
import '../widget/main_text.dart';
import '../widget/mediat_text.dart';

class AboutUs extends StatelessWidget {
  static const id = "/AboutUs";

  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: MediatText(
          text: AppWords.appName,
          color: Colors.white,
        ),
        backgroundColor: AppColors.mainColor,
      ),
      drawer: const Drawers(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: Dimensions.height100 + 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.mainColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: Dimensions.height100 - 20),
                  child: const Center(
                    child: MainText(
                      text: AppWords.aboutUs,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Dimensions.height100),
                child: Container(
                  height: Dimensions.height100 + 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.width45),
                      topLeft: Radius.circular(Dimensions.width45),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(Dimensions.height45 - 15),
                    child: Image.asset("assets/images/logo/logo.png"),
                  ),
                ),
              ),
            ],
          ),
          const MainText(
            text: AppWords.appName,
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          MediatText(
            text: AppWords.appName,
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          MediatText(
            text: AppWords.appName,
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          MediatText(
            text: AppWords.appName,
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          MediatText(
            text: AppWords.appName,
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconSocialMedia(
                onTap: () {},
                image: 'assets/images/icons/facebook.png',
              ),
              SizedBox(
                width: Dimensions.width20,
              ),
              IconSocialMedia(
                onTap: () {},
                image: 'assets/images/icons/twitter.jpg',
              ),
              SizedBox(
                width: Dimensions.width20,
              ),
              IconSocialMedia(
                onTap: () {},
                image: 'assets/images/icons/whatsapp.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
