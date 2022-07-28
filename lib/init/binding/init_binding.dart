import 'package:get/get.dart';
import 'package:interview/presentation/screens/auth/sign_in/controller/auth_controller.dart';

import '../controller/init_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
