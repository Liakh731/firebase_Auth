import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauth/auth.dart';

class HomePageTeste extends StatelessWidget {
  HomePageTeste({super.key});

  final User? user = Auth().currentUser;

  Future<void> SignOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('Firebase Auth');
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User email');
  }

  Widget _SignOutButton() {
    return ElevatedButton(onPressed: SignOut, child: const Text('Sign Out'));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
