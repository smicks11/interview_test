import 'package:get/get.dart';
import 'package:interview/presentation/screens/auth/sign_in/sign_in.dart';
import 'package:interview/presentation/screens/home/screens/index.dart';

import '../init/binding/init_binding.dart';
import '../presentation/screens/auth/sign_in/binding/signin_binding.dart';

part 'app_routes.dart';

class AppPages {
  static const SIGNINSCREEN = Routes.INITIAL;
  static final routes = [
    GetPage(
        name: SIGNINSCREEN,
        page: () => const SignIn(),
        binding: InitBinding()),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: SignInBinding(),
    ),
  ];
}
