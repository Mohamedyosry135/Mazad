import 'package:example_structure/pages/login/bindings/login_binding.dart';
import 'package:example_structure/pages/login/presentation/views/login_view.dart';
import 'package:example_structure/pages/splash/bindings/splash_binding.dart';
import 'package:example_structure/pages/splash/presentation/views/splash_view.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
        name: Routes.SPLASH,
        page: () => const SplashView(),
        binding: SplashBinding()),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
