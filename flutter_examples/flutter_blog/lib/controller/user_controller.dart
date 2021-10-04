import 'package:flutter_blog/domain/user/user.dart';
import 'package:flutter_blog/domain/user/user_repository.dart';
import 'package:flutter_blog/util/jwt.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserController extends GetxController {
  final UserRepository _userRepository = UserRepository();
<<<<<<< HEAD
  final RxBool isLogin = false.obs; // OBS ??? UI가 관찰 가능한 변수 => 얘가 바뀌면 UI will be updated
=======
  final RxBool isLogin = false.obs; // UI가 관찰 가능한 변수 => 변경 => UI가 자동 업데이트
>>>>>>> dec5511aae8a4b137b87175f4e5d591fe4df3125

  final principal = User().obs;
  void logout() {
    isLogin.value = false;
    jwtToken = null;
  }

  Future<int> login(String username, String password) async {
    User principal = await _userRepository.login(username, password);

    if (principal.id != null) {
      this.isLogin.value = true;
      this.principal.value = principal;
      return 1;
    } else {
      return -1;
    }
  }
}
