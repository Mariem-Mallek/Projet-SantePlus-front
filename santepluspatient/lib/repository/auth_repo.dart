import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:santepluspatient/models/utilisateur.dart';

class AuthRepo extends GetxController {
  static AuthRepo get instance => Get.find();
  final _db = FirebaseFirestore.instance;

  //Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
  }

//Create a user
  createUser(Utilisateur user) async {
    final docUser = _db.collection("usersPatient").doc();
    user = user.setId(docUser.id);
    await docUser.set(user.toJson());
  }

//Sign Up
  Future<bool?> SignUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      return false;
    }
  }
  //Sign In

  Future<bool?> SignIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);

      print("succes");
      return true;
    } on FirebaseAuthException catch (e) {
      print("erreur");
      return false;
    }
  }

  //Forguet Password
  Future<bool?> ForguetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);

      print("succes");
      return true;
    } on FirebaseAuthException catch (e) {
      print("erreur");
      return false;
    }
  }

  //Logout
  Future<void> logout() async => await _auth.signOut();

  //Get User
  Future<Utilisateur> getUserDetails(String email) async {
    final snapshot = await _db
        .collection("usersPatient")
        .where("email", isEqualTo: email)
        .get();
    final userData = snapshot.docs.map((e) => Utilisateur.fromSnapshot(e)).single;

    return userData;
  }

  //Update User
  Future<void> updateUserRecord(Utilisateur user) async {
    await _db.collection("usersPatient").doc(user.id).update(user.toJson());
  }
}