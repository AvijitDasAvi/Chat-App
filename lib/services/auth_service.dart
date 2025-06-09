import 'package:chat_app/features/home/page/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> loginWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return null;
      }

      final googleAuth = await googleUser.authentication;

      final cred = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      return await _auth.signInWithCredential(cred);
    } catch (e) {
      if (kDebugMode) {
        print("Google sign-in error: $e");
      }
      return null;
    }
  }

  Future<void> logWithGoogle(BuildContext context) async {
    try {
      EasyLoading.show(status: "Signing in with Google...");
      final userCredential = await loginWithGoogle();

      if (userCredential?.user == null) {
        EasyLoading.showError("Google user not found.");
        return;
      }

      final idToken = await userCredential!.user!.getIdToken(true);
      if (idToken!.isEmpty) {
        EasyLoading.showError("Failed to retrieve ID token.");
        return;
      }

      EasyLoading.showSuccess("Signed in successfully!");
      await Future.delayed(const Duration(seconds: 1));
      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    } on FirebaseAuthException catch(e){
      EasyLoading.showError(_mapFirebaseErrorToMessage(e));
      if (kDebugMode) print("Google sign-in error: $e");
    }
   
    catch (e) {
      EasyLoading.showError("Google login error: $e");
      if (kDebugMode) {
        print("Google sign-in error: $e");
      }
    } finally {
      EasyLoading.dismiss();
    }
  }

  String _mapFirebaseErrorToMessage(FirebaseAuthException e) {
    switch (e.code) {
      case 'account-exists-with-different-credential':
        return 'An account already exists with a different sign-in method.';
      case 'invalid-credential':
        return 'Invalid credentials. Please try again.';
      case 'user-disabled':
        return 'This account has been disabled.';
      case 'operation-not-allowed':
        return 'Google sign-in is not enabled for this app.';
      default:
        return 'An error occurred during sign-in. Please try again.';
    }
  } 
}
