// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  //Get.put(AppController());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
        title: 'Medfestcare',
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.SIGNINSCREEN,
        getPages: AppPages.routes,
        theme: ThemeData(
          fontFamily: 'Gilroy',
        ),
      );
  }
}
