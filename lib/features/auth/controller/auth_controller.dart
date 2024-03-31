import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/base/base_controller.dart';
import 'package:learning_app/features/auth/models/login_model.dart';
import 'package:learning_app/features/auth/models/user_model.dart';
import 'package:learning_app/features/auth/repository/auth_repo.dart';

class AuthController extends BaseController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final AuthRepository _repository = Get.find<AuthRepository>();
  final Rx<UserModel> _currentUser = UserModel().obs;

  var currentLMS = [
    "CESDEL-CARRERAS",
    "CESDEL-POSTGRADO",
    "CESDEL-PROFESIONALIZACION",
    "CESDEL-CARRERAS(NEW)",
    "CESDEL-POST(NEW)",
    "CESDEL-PROF(NEW)"
  ];

  final selected = "CESDEL-CARRERAS(NEW)".obs;

  void setSelected(String value) {
    selected.value = value;
  }

  bool _isValid() {
    if (emailController.text.trim().isEmpty) {}
    return true;
  }

  UserModel get currentUser => _currentUser.value;

  void login(LoginModel userLoginModel) async {
    callApiService(_repository.login(userLoginModel),
        onSuccess: _handleLoginSuccess);
  }

  void _handleLoginSuccess(UserModel? user) {
    _currentUser(UserModel(
        lms: user!.lms,
        userid: user.userid,
        useremail: user.useremail,
        userpassword: user.userpassword,
        userrole: user.userrole,
        fullname: user.fullname));
  }
}
