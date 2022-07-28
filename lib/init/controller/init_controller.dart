import 'dart:async';
import 'dart:developer';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';
import '../../services/storage.dart';

class InitController extends GetxController {
  navigate() async {
    String step = await Storage.getStep() ?? "no step";
    log(step);
    switch (step) {
      case "login":
        Timer(const Duration(seconds: 3), () {
          Get.offNamed(Routes.INITIAL);
        });
        break;
      case "done":
        Timer(const Duration(seconds: 3), () {
          Get.offNamed(Routes.HOME);
        });
        break;
      default:
        Timer(
          const Duration(seconds: 3),
          () => Get.offNamed(Routes.INITIAL),
        );
    }
  }

  @override
  void onReady() {
    navigate();
    super.onReady();
  }
}
