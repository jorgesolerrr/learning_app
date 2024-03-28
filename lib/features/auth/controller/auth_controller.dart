import 'package:get/get.dart';
import 'package:learning_app/base/base_controller.dart';
import 'package:learning_app/features/auth/models/login_model.dart';
import 'package:learning_app/features/auth/models/user_model.dart';
import 'package:learning_app/features/auth/repository/auth_repo.dart';

class AuthController extends BaseController {
  final AuthRepository _repository = Get.find<AuthRepository>();

  final Rx<UserModel> _currentUser = UserModel().obs;

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
