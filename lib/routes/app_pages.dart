import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/modules/home/bindings/create_meeting_binding.dart';
import 'package:swm_miniproject_flutter/modules/home/bindings/explore_binding.dart';
import 'package:swm_miniproject_flutter/modules/home/views/create_meeting_view.dart';
import 'package:swm_miniproject_flutter/modules/home/views/explore_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

abstract class AppPages {
  const AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE,
      page: () => const ExploreView(),
      binding: ExploreBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_MEETING,
      page: () => const CreateMeetingView(),
      binding: CreateMeetingBinding(),
    ),
  ];
}
