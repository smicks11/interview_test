import 'package:get/get.dart';
import 'package:interview/presentation/screens/auth/sign_in/controller/auth_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
