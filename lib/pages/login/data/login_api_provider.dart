// ignore: one_member_abstracts
import 'package:example_structure/base/api_end_points.dart';
import 'package:example_structure/base/base_auth_provider.dart';
import 'package:example_structure/pages/login/model/individual.dart';
import 'package:example_structure/services/auth_service.dart';
import 'package:get/get.dart';


abstract class ILoginProvider {
  Future<Response<LoginResponeModel>> loginWithEmailAndPassword(
      String email, String password);
}

class LoginProvider extends BaseAuthProvider implements ILoginProvider {
  @override
  Future<Response<LoginResponeModel>> loginWithEmailAndPassword(
      String email, String password) {
    final languageApp = AuthService.to.language;
    return post<LoginResponeModel>(
        EndPoints.loginEndPoint,
        {
          "email": email,
          "password": password,
        },
        decoder: LoginResponeModel.fromJson,
    );
  }
}
