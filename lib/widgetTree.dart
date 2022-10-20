import 'package:flutter/material.dart';
import 'package:firebaseauth/auth.dart';
import 'package:firebaseauth/testeAuthHome.dart';
import 'package:firebaseauth/testeAuthLoginRegister.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePageTeste();
          } else {
            return const LoginPageTeste();
          }
        });
  }
}
