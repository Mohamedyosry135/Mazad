import 'package:example_structure/pages/splash/data/splash_repository.dart';
import 'package:example_structure/routes/app_pages.dart';
import 'package:example_structure/services/auth_service.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashController extends SuperController<dynamic> {
  SplashController({required this.splashRepository});

  final ISplashRepository splashRepository;
  @override
  void onInit() async {
    super.onInit();

    SystemChannels.textInput.invokeMethod('TextInput.hide');
    Future.delayed(const Duration(seconds: 2)).then((value) {
      final isLoggedIn = AuthService.to.isLoggedIn.value;
      final isSelectedLanguage = AuthService.to.isSelectedLanguage.value;
      if (isLoggedIn) {
        Get.rootDelegate.offNamed(Routes.HOME);
        print("LOL");
      } else {
        if (isSelectedLanguage) {
          Get.rootDelegate.offNamed(Routes.LOGIN);
        } else {
          Get.rootDelegate.offNamed(Routes.SELECT_LANG);
        }
      }
    });
  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}
