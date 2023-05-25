import 'package:authlogin/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class FireBaseAuthWithEmail {


  static signUpFirebase(String email, String password, context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      const snackBar = SnackBar(
        content: Text('User Created'),
        backgroundColor: Colors.amber,
        animation: AlwaysStoppedAnimation(double.infinity),
        showCloseIcon: true,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      final timer = Timer(
        const Duration(seconds: 3),
        () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        const snackBar = SnackBar(
          content: Text('Weak Password Please Set Strong One '),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else if (e.code == 'email-already-in-use') {
        const snackBar = SnackBar(
          content: Text('The account already exists for that email.'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } catch (e) {
      const snackBar = SnackBar(
        content: Text("Signup Form Try Catch Problem Please Contact Developer"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  static signInFirebase(String email, String password, context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      const snackBar = SnackBar(
        content: Text('User Logged In Successfully '),
        backgroundColor: Colors.amber,
        animation: AlwaysStoppedAnimation(double.infinity),
        showCloseIcon: true,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      print(credential);

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        const snackBar = SnackBar(
          content: Text('No user found for that email.'),
          backgroundColor: Colors.amber,
          animation: AlwaysStoppedAnimation(double.infinity),
          showCloseIcon: true,
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else if (e.code == 'wrong-password') {
        const snackBar = SnackBar(
          content: Text('Wrong password provided for that user.'),
          backgroundColor: Colors.amber,
          animation: AlwaysStoppedAnimation(double.infinity),
          showCloseIcon: true,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }


}
