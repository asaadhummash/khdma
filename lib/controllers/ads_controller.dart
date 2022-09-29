import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/ads_api.dart';
import '../models/ads_model.dart';
import '../utils/colors.dart';
import 'package:logger/logger.dart';

class AdsController extends GetxController {

  var isLoading = true.obs;

  Logger logger=Logger();

  var adsList = <AdsModel>[].obs;

  @override
  void onInit() {
    getAds();
    super.onInit();
  }

  void getAds() async {
    var adsImage = await AdsApi().getAds();
    if (adsImage.isNotEmpty) {
      isLoading(false);
      adsList.addAll(adsImage);
      logger.i("${adsList.length}");

    } else {
      isLoading(true);
      Get.snackbar(
          "Check the Internet ", "Please check the internet connection",
          backgroundColor: AppColors.icoColor2, colorText: Colors.white);
    }
  }
}
