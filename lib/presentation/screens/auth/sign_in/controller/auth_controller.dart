import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../services/api_service.dart';
import '../../../../../services/storage.dart';
import '../../../../../utils.dart/snackbar.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxString email = ''.obs;
  RxString password = ''.obs;
  RxString error = ''.obs;
  RxString error1 = ''.obs;

  RxBool loading = false.obs;
  signIn() async {
    try {
      loading.value = true;
      var data = {
        "username": email.value,
        "password": password.value,
        "server_key": "0e2603d8db46b8f6c1fdf0988436e815"
      };
      var url = "api/auth";
      final response = await ApiService.postData(data, url);
      if (response != null) {
        if (response.statusCode == 200) {
          Map data = jsonDecode(response.body);
          if (data.isNotEmpty) {
            log('not empty');
            loading.value = false;
            await Storage.saveData("token", data['access_token']);
            await Storage.setStep("done");
            Get.offAllNamed('/home');
          } else {
            loading.value = false;
          }
        } else {
          cToast(msg: "Invalid details", color: Colors.red);
          loading.value = false;
        }
      } else{
       
      }
    } catch (e) {
       cToast(msg: "Invalid details", color: Colors.red);
      loading.value = false;
    }
  }
}
