import 'package:cirebon_onstats/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../auth/login_screen.dart';

class AddLokalDataScreen extends StatefulWidget {
  const AddLokalDataScreen({Key? key}) : super(key: key);

  @override
  State<AddLokalDataScreen> createState() => _AddLokalDataScreenState();
}

class _AddLokalDataScreenState extends State<AddLokalDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(
                child: Text('Terjadi Kesalahan',
                    style: TextStyle(color: Colors.white)));
          } else if (snapshot.hasData) {
            return const AddStatsWidget();
          } else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}
