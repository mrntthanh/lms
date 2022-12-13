import 'package:get/get.dart';
import 'package:vus_lms/services/user_api_service.dart';
import '../controllers/home_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<UserApiService>(() => UserApiService());
  }
}