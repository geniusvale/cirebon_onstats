import 'package:flutter/material.dart';

class LokalStatsScreen extends StatefulWidget {
  const LokalStatsScreen({Key? key}) : super(key: key);

  @override
  State<LokalStatsScreen> createState() => _LokalStatsScreenState();
}

class _LokalStatsScreenState extends State<LokalStatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF043277),
      appBar: AppBar(
        title: const Text('Data Statistik Lokal'),
        backgroundColor: const Color(0xFF043277),
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/addLokalData'),
              icon: const Icon(Icons.admin_panel_settings_outlined))
        ],
      ),
      body: null,
    );
  }
}
