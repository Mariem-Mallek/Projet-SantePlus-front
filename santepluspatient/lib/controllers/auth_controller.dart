import 'package:get/get.dart';
import 'package:santepluspatient/models/utilisateur.dart';
import '../repository/auth_repo.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();
  final _authRepo = Get.put(AuthRepo());

  Future<bool?> createUserController(Utilisateur user) async {
    bool? status = await _authRepo.SignUp(user.email!, user.mdp!);
    if (status == true) await _authRepo.createUser(user);
    return status;
  }

  Future<bool?> loginUserController(Utilisateur user) async {
    return _authRepo.SignIn(user.email!, user.mdp!);
  }

  Future<bool?> forguetPasswordController(String email) async {
    return _authRepo.ForguetPassword(email);
  }

  Future<void> logoutController() async {
    _authRepo.logout();
  }

  getUserDetailsController() async {
    final email = _authRepo.firebaseUser.value?.email;
    print("email= ${email}");
    if (email != null) {
      return _authRepo.getUserDetails(email);
    }
  }

  updateUserController(Utilisateur user) async {
    _authRepo.updateUserRecord(user);
  }
}