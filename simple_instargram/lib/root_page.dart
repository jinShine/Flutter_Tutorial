import 'package:flutter/material.dart';
import 'package:simple_instargram/tabbar_page.dart';
import 'login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _handleCurrentScreen();
  }

  Widget _handleCurrentScreen() {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoginPage();
        } else {
          if (snapshot.hasData) {
            return TabbarPage(snapshot.data);
          }

          return LoginPage();
        }
      },
    );
  }

}