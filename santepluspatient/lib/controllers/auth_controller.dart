import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:santepluspatient/models/utilisateur.dart';
import 'package:santepluspatient/utils/constants/api_constant.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();

//Sign in
  Future<Map<String, dynamic>> signinController(Utilisateur user) async {
    var reqBody = {"email": user.email, "mdp": user.mdp};
    var response = await http.post(
      Uri.parse(login),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(reqBody),
    );
    var jsonResponse = jsonDecode(response.body);

    if (jsonResponse['token'] != null) {
      var myToken = jsonResponse['token'];
      return {
        "status": true,
        "message": jsonResponse['message'],
        "token": myToken,
      };
    } else {
      return {
        "status": false,
        "error": jsonResponse['message'] ?? "Échec de connexion",
      };
    }
  }

//Sign up
  Future<Map<String, dynamic>> signupController(Utilisateur user) async {
    var reqBody = {"nom":user.nom, "prenom":user.prenom, "email": user.email, "mdp":user.mdp, "numTel": user.numTel};
    var response = await http.post(
      Uri.parse(register),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(reqBody),
    );
    var jsonResponse = jsonDecode(response.body);

    if (jsonResponse['_id'] != null) {
    return {
      "status": true,
      "success": "Inscription réussie",
      "user": jsonResponse,
    };
  } else {
    return {
      "status": false,
      "error": jsonResponse['message'] ?? "Échec de connexion",
    };
  }
  }
}
