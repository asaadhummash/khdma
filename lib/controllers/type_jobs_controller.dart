import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/type_jobs_api.dart';
import '../language/app_words.dart';
import '../models/type_jobs_model.dart';
import '../models/user_job_model.dart';
import '../utils/colors.dart';
import 'package:logger/logger.dart';

class TypeJobsController extends GetxController {
  var isLoading = true.obs;
  var isLoadingJob = true.obs;

  Logger logger = Logger();

  var typeJobsList = <TypeJobsModel>[].obs;
  List<String> typeJobsListString = [];
  var jobsList = <JobsModel>[].obs;

  // JobsModel getJobsId(int jobId) {
  //   return jobsList.firstWhere((element) => element.id == jobId);
  // }

  @override
  void onInit() {
    getTypeJobs();
    super.onInit();
  }

  void getTypeJobs() async {
    var typeJobs = await Api().getTypeJobs();
    if (typeJobs.isNotEmpty) {
      isLoading(false);
      typeJobsList.addAll(typeJobs);
      for (var element in typeJobsList) {
        typeJobsListString.add(element.name ?? '');
      }
      update();
      logger.i("${typeJobsList.length}");
    } else {
      isLoading(true);
      Get.snackbar(
          "Check the Internet ", "Please check the internet connection",
          backgroundColor: AppColors.icoColor2, colorText: Colors.white);
    }
  }
}
