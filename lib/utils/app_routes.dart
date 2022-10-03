import 'package:get/get.dart';
import '../page/about_us/about_us.dart';
import '../page/auth/profile.dart';
import '../page/auth/profile_OO.dart';
import '../page/auth/sign_in_page.dart';
import '../page/auth/sign_up_page.dart';
import '../page/details/person_details_page.dart';
import '../page/home/home_page.dart';
import '../page/home/jobs_page.dart';
import '../page/job_requests/job_request.dart';
import '../page/jobs/jobs_info_page.dart';
import '../page/splash/splash_page.dart';

class AppRoutes {
  static const String jobsInfoPage = "/jobs_info";
  // static String getJobsInfoPage (int pageId , String page) =>'$jobsInfoPage?pageId=$pageId&page=$page';

  static List<GetPage> allRoutes = [
    GetPage(
      name: SplashPage.id,
      page: () => const SplashPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: HomePage.id,
      page: () => const HomePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: "/jobsPage",
      page: () => JobsPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      // name: jobsInfoPage,
      name:JobsInfoPage.id,
      page: (){
        // var pageId = Get.parameters['pageId'];
        // var page = Get.parameters['page'];
        // return JobsInfoPage(pageId: int.parse(pageId!),page:page!);
        return JobsInfoPage();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: "/personDetailsPage",
      page: () => PersonDetailsPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: SignInPage.id,
      page: () => SignInPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: SignUpPage.id,
      page: () => SignUpPage(),
      // binding: RegisterBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AboutUs.id,
      page: () => const AboutUs(),
      // binding: RegisterBinding(),
      transition: Transition.fadeIn,
    ),

    GetPage(
      name: JobRequest.id,
      page: () => JobRequest(),
      // binding: RegisterBinding(),
      transition: Transition.fadeIn,
    ),

    // GetPage(
    //   name: Profile.id,
    //   page: () => Profile(),
    //   transition: Transition.fadeIn,
    // ),
  ];
}
