part of 'app_pages.dart';

abstract class Routes {
  static const SPLASH = '/splash';
  static const LOGIN = '/login';
  static const SELECT_LANG = '/select_lang';
  static const SINGLE_MISSION_INTRO = '/singleMissionIntro';
  static const HOME = '/home';
  static const SINGLE_MIISION_STEP2 = '/singleMissionStep2';
  static const NOTIFICATIONS = '/notifications';
  static const MENU = '/menu';
  static const FORGET_PASSWORD = '/forgetPassword';
  static const SINGLE_MIISION_STEP3 = '/singleMissionStep3';
  static const SINGLE_MISSION_COMPLETED = '/singleMissionCompleted';
  static const ACC_DETAILS = '/acc_details';
  static const STATISTIC = '/Statistics';
  static const ALL_TASKS = '/all_tasks';
  static const COMPLETE_STEP5 = '/complete_step5';
  static const SETTING = '/setting';
  static const STEP2COVERAGEDENSITIES = '/step2CoverageDensities';
  static const STEP2_INSECT_EXPLORATION_ADULT = '/Step2InsectExplorationAdult';
  static const STEP2_INSECT_EXPLORATION_LARVAL =
      '/Step2InsectExplorationLarval';
  static const STEP2_REPORT_COVERAGE = '/Step2ReportCoverage';
  static const STEP2_Covering_Suspected_Dengue_Fever =
      '/coveringSuspectedDengueFever';
  static const STEP2_EXTERNAL_COMBAT = '/externalCombat';
  static const FULLIMAGE = '/fullImage';
  static const SUPPORT = '/support';
  static const UPDATEPASS = '/updatePassword';

  static String LOGIN_THEN(String afterSuccessfulLogin) =>
      '$LOGIN?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
}
