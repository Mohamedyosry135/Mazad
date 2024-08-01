import 'package:example_structure/pages/login/data/login_repository.dart';
import 'package:example_structure/pages/login/model/individual.dart';
import 'package:example_structure/routes/app_pages.dart';
import 'package:get/get.dart';


class LoginController extends SuperController<bool> {
  LoginController({required this.loginRepository});

  final ILoginRepository loginRepository;

  RxBool isHiddenPassword = true.obs;
  String email = "", password = "";
Rx<LoginResponeModel> loginRes = LoginResponeModel().obs;
  changeIsHiddenPassword() => isHiddenPassword.toggle();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    change(null, status: RxStatus.success());
  }

  onLoginClicked() {
    change(false, status: RxStatus.loading());
   var apiResp = loginRepository.login(email, password).then((value) {

      final thenTo = Get
          .rootDelegate.currentConfiguration!.currentPage!.parameters?['then'];
      Get.rootDelegate.offNamed(thenTo ?? Routes.HOME);
      change(true, status: RxStatus.success());
    }, onError: (err) {
      print( "ya mosahel ${err}");
      //use success status to display the login button again
      change(false, status: RxStatus.success());
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
