import 'package:example_structure/base/base_provider.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';



class BaseAuthProvider extends BaseProvider {
  @override
  void onInit() {
    super.onInit() ;
    httpClient.baseUrl = "";
  }
}
