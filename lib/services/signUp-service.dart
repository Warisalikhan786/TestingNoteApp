// ignore_for_file: file_names, unused_local_variable, avoid_print, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:note_app/screens/login_screen.dart';

signUpFun(
  String userName,
  String userEmail,
  String userPhone,
  String userPassword,
) {
  User? user = FirebaseAuth.instance.currentUser;

  Map<String, dynamic> userData = {
    'userName': userName,
    'userEmail': userEmail,
    'userPhone': userPhone,
    'createdAt': DateTime.now(),
    'userId': user!.uid,
  };

  try {
    FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .set(userData)
        .then(
      (value) {
        FirebaseAuth.instance.signOut();
        Get.offAll(() => LoginScreen());
      },
    );
  } on FirebaseAuthException catch (e) {
    print("error $e");
  }
}
