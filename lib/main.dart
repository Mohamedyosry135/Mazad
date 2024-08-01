import 'package:example_structure/config/ConfigReader.dart';
import 'package:example_structure/consts/themes.dart';
import 'package:example_structure/lang/translation_service.dart';
import 'package:example_structure/routes/app_pages.dart';
import 'package:example_structure/services/auth_service.dart';
import 'package:example_structure/shared/logger/logger_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await GetStorage.init('userData');
  await GetStorage.init('appLanguage');
  await GetStorage.init('language');
  await GetStorage.init('appData');
  await ConfigReader.initialize();
  Get.put(AuthService());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return GetMaterialApp.router(
          debugShowCheckedModeBanner: false,
          enableLog: true,
          logWriterCallback: Logger.write,
          theme: Themes.light,
          themeMode: ThemeMode.light,
          getPages: AppPages.routes,
          locale: Locale(AuthService.to.language != null
              ? AuthService.to.language.toString()
              : 'ar'),
          fallbackLocale: TranslationService.fallbackLocale,
          supportedLocales: const [Locale('ar', ''), Locale('en', '')],
          translations: TranslationService(),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      },
    );
  }
}
