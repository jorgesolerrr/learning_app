import 'package:learning_app/features/auth/models/login_model.dart';
import 'package:learning_app/services/api_service.dart';
import 'package:logger/logger.dart';

import '../models/user_model.dart';

class AuthRepository {
  Future<UserModel?> login(LoginModel userLogin) async {
    try {
      final response = await ApiService.ApiCall("/login", RequestType.post,
          data: userLogin.toMap());
      return UserModel.fromMap(response.data);
    } catch (error) {
      Logger().e(error);
      return null;
    }
  }
}
