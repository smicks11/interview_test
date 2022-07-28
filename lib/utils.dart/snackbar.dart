import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../presentation/resources/app_colors.dart';

cToast({required String msg,required Color color}) => Get.snackbar(
      "Notice!",
      msg,
      snackPosition: SnackPosition.TOP,
      backgroundColor: color,
      icon: const Icon(Icons.info, color: kWhiteColor),
      shouldIconPulse: true,
      colorText: kWhiteColor,
      margin: const EdgeInsets.all(15),
      duration: const Duration(seconds: 4),
      isDismissible: true,
      // dismissDirection: SnackDismissDirection.HORIZONTAL,
      forwardAnimationCurve: Curves.easeOutBack,
    );
