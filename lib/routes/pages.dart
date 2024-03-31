import 'package:get/get.dart';
import 'package:learning_app/features/auth/bindings/auth_binding.dart';
import 'package:learning_app/features/auth/views/singin_view.dart';
import 'package:learning_app/views/welcome_screen.dart';

import '../features/auth/views/sign_up_screen.dart';

part 'routes.dart';

class AppPages {
  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: _Paths.AUTH_SIGNIN,
      page: () => SiginView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_SIGNUP,
      page: () => SignUpView(),
      binding: AuthBinding(),
    )
  ];
}
