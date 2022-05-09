import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    final Stream<QuerySnapshot> _statsStream =
        FirebaseFirestore.instance.collection('localstats').snapshots();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Statistik Lokal'),
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/addLokalData'),
              icon: const Icon(Icons.admin_panel_settings_outlined))
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _statsStream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text('Terjadi Kesalahan');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot doc) {
              Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
              return ListTile(
                textColor: Colors.white,
                title: Text(data['judul']),
                subtitle: Text(data['nilai']),
                trailing: Text(data['tahun']),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
