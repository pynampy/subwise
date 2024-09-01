import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticatorWidget extends StatelessWidget {
  final Widget authenticated;
  final Widget notAuthenticated;
  const AuthenticatorWidget(
      {required this.authenticated, required this.notAuthenticated, super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          FirebaseAuth.instance.signOut();
          if (snapshot.hasData) {
            if (snapshot.data != null) return authenticated;
          }
          return notAuthenticated;
        });
  }
}
