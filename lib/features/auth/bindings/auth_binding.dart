import 'package:get/get.dart';
import 'package:learning_app/features/auth/controller/auth_controller.dart';
import 'package:learning_app/features/auth/repository/auth_repo.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepository());
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
