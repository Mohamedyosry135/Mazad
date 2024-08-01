import 'package:example_structure/base/base_repositroy.dart';
import 'package:example_structure/pages/login/model/individual.dart';
import 'package:example_structure/services/auth_service.dart';
import 'package:get/get.dart';


import 'login_api_provider.dart';

abstract class ILoginRepository {
  Future<LoginResponeModel> login(String email , String password) ;
}

class LoginRepository extends BaseRepository implements ILoginRepository {
  LoginRepository({required this.provider});
  final ILoginProvider provider;

  @override
  Future<LoginResponeModel> login(String email, String password) async{
    final apiResponse = await provider.loginWithEmailAndPassword(email, password) ;
    printInfo(info: apiResponse.bodyString!);
    print("apiResponse.isOk ${apiResponse.isOk}");
    if(apiResponse.isOk && apiResponse.body != null){
      AuthService.to.login(apiResponse.body!);
      return apiResponse.body! ;
    }else {
      print("apiResponse.body!.msg ${apiResponse.body!.msg}");
      throw(getErrorMessage(apiResponse.body!.msg!)) ;
    }
  }
}
