import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../language/app_words.dart';
import '../models/ads_model.dart';
import '../utils/colors.dart';

class AdsApi {
  static var client = http.Client();

  Future<List<AdsModel>> getAds() async {
    var response =
    await client.get(Uri.parse( AppWords.baseUri + AppWords.getImageAds));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return adsModelFromJson(jsonString);
    } else {
      return throw Get.snackbar(
          "Error bringing worker's data", "Please check connection!",
          backgroundColor: AppColors.icoColor2, colorText: Colors.white);
    }
  }
}


