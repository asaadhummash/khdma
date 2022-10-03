import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khdma/page/widget/drawers.dart';

import '../../controllers/job_request_controller.dart';
import '../../language/app_words.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../widget/main_text.dart';
import '../widget/mediat_text.dart';
import '../widget/small_text.dart';

class JobRequest extends StatelessWidget {
  static const id = "/JobRequest";

  JobRequest({Key? key}) : super(key: key);

  final JobRequestController jobRequestController = Get.put(JobRequestController());

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
      drawer: Drawers(),
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: EdgeInsets.all(Dimensions.height20 - 12),
              child: Column(
                children: [
                  Obx(() {
                    if (jobRequestController.isLoading.value) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: jobRequestController.jobRequestList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(Dimensions.width20 - 10,),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SmallText(text: jobRequestController.jobRequestList[index].title),
                                        SizedBox(
                                          height: Dimensions.height20 - 10,
                                        ),
                                        SmallText(text: jobRequestController.jobRequestList[index].dateStart),
                                        SizedBox(
                                          height: Dimensions.height20 - 10,
                                        ),
                                        SmallText(text: jobRequestController.jobRequestList[index].dateEnd),
                                        SizedBox(
                                          height: Dimensions.height20 - 10,
                                        ),
                                        SmallText(text: jobRequestController.jobRequestList[index].price,
                                        ),
                                        SizedBox(
                                          height: Dimensions.height20 - 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: Dimensions.width45,),
                                  jobRequestController.jobRequestList[0].status == 1?
                                  Container(
                                    width: Dimensions.width100 - 30,
                                    height: Dimensions.height100 - 30,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(Dimensions.radius5),
                                        color: AppColors.mainColor),
                                    child: Center(
                                      child: SmallText(
                                        text: "Ok",
                                        size: Dimensions.font20 + Dimensions.font20 / 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ):
                                  Container(
                                    width: Dimensions.width100 - 30,
                                    height: Dimensions.height100 - 30,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(Dimensions.radius5),
                                        color: AppColors.icoColor2),
                                    child: Center(
                                      child: SmallText(
                                        text: "No",
                                        size: Dimensions.font20 + Dimensions.font20 / 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    }
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
