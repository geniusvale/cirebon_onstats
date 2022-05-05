import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LokalStatsScreen extends StatefulWidget {
  const LokalStatsScreen({Key? key}) : super(key: key);

  @override
  State<LokalStatsScreen> createState() => _LokalStatsScreenState();
}

class _LokalStatsScreenState extends State<LokalStatsScreen> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Statistik Lokal'),
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/addLokalData'),
              icon: const Icon(Icons.admin_panel_settings_outlined))
        ],
      ),
      body: Center(
        child: Text(user.toString()),
      ),
    );
  }
}
