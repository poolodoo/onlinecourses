import 'package:ajitkumar_s_application5/presentation/home_screen/home_screen.dart';
import 'package:ajitkumar_s_application5/presentation/home_screen/binding/home_binding.dart';
import 'package:ajitkumar_s_application5/presentation/eduvi_online_shop_one_screen/eduvi_online_shop_one_screen.dart';
import 'package:ajitkumar_s_application5/presentation/eduvi_online_shop_one_screen/binding/eduvi_online_shop_one_binding.dart';
import 'package:ajitkumar_s_application5/presentation/eduvi_online_shop_screen/eduvi_online_shop_screen.dart';
import 'package:ajitkumar_s_application5/presentation/eduvi_online_shop_screen/binding/eduvi_online_shop_binding.dart';
import 'package:ajitkumar_s_application5/presentation/eduvi_course_details_screen/eduvi_course_details_screen.dart';
import 'package:ajitkumar_s_application5/presentation/eduvi_course_details_screen/binding/eduvi_course_details_binding.dart';
import 'package:ajitkumar_s_application5/presentation/pricing_screen/pricing_screen.dart';
import 'package:ajitkumar_s_application5/presentation/pricing_screen/binding/pricing_binding.dart';
import 'package:ajitkumar_s_application5/presentation/become_an_instructor_screen/become_an_instructor_screen.dart';
import 'package:ajitkumar_s_application5/presentation/become_an_instructor_screen/binding/become_an_instructor_binding.dart';
import 'package:ajitkumar_s_application5/presentation/mentors_screen/mentors_screen.dart';
import 'package:ajitkumar_s_application5/presentation/mentors_screen/binding/mentors_binding.dart';
import 'package:ajitkumar_s_application5/presentation/mentor_profile_screen/mentor_profile_screen.dart';
import 'package:ajitkumar_s_application5/presentation/mentor_profile_screen/binding/mentor_profile_binding.dart';
import 'package:ajitkumar_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ajitkumar_s_application5/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String eduviOnlineShopOneScreen =
      '/eduvi_online_shop_one_screen';

  static const String eduviOnlineShopScreen = '/eduvi_online_shop_screen';

  static const String eduviCourseDetailsScreen = '/eduvi_course_details_screen';

  static const String pricingScreen = '/pricing_screen';

  static const String becomeAnInstructorScreen = '/become_an_instructor_screen';

  static const String mentorsScreen = '/mentors_screen';

  static const String mentorProfileScreen = '/mentor_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: eduviOnlineShopOneScreen,
      page: () => EduviOnlineShopOneScreen(),
      bindings: [
        EduviOnlineShopOneBinding(),
      ],
    ),
    GetPage(
      name: eduviOnlineShopScreen,
      page: () => EduviOnlineShopScreen(),
      bindings: [
        EduviOnlineShopBinding(),
      ],
    ),
    GetPage(
      name: eduviCourseDetailsScreen,
      page: () => EduviCourseDetailsScreen(),
      bindings: [
        EduviCourseDetailsBinding(),
      ],
    ),
    GetPage(
      name: pricingScreen,
      page: () => PricingScreen(),
      bindings: [
        PricingBinding(),
      ],
    ),
    GetPage(
      name: becomeAnInstructorScreen,
      page: () => BecomeAnInstructorScreen(),
      bindings: [
        BecomeAnInstructorBinding(),
      ],
    ),
    GetPage(
      name: mentorsScreen,
      page: () => MentorsScreen(),
      bindings: [
        MentorsBinding(),
      ],
    ),
    GetPage(
      name: mentorProfileScreen,
      page: () => MentorProfileScreen(),
      bindings: [
        MentorProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    )
  ];
}
