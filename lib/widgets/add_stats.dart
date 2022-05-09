import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AddStatsWidget extends StatefulWidget {
  const AddStatsWidget({Key? key}) : super(key: key);

  @override
  State<AddStatsWidget> createState() => _AddStatsWidgetState();
}

class _AddStatsWidgetState extends State<AddStatsWidget> {
  final TextEditingController judul = TextEditingController();
  final TextEditingController tahun = TextEditingController();
  final TextEditingController nilai = TextEditingController();

  @override
  void dispose() {
    judul.dispose();
    tahun.dispose();
    nilai.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference localstats = firestore.collection('localstats');

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => FirebaseAuth.instance.signOut(),
        child: const Icon(Icons.logout_outlined),
      ),
      appBar: AppBar(
        title: const Text('Tambah Data Statistik Lokal'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: judul,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Masukkan Judul - E.g "Total Kecamatan"',
                hintStyle: TextStyle(color: Colors.grey),
                labelText: 'Judul',
                labelStyle: TextStyle(color: Colors.white),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: tahun,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Masukkan Tahun',
                hintStyle: TextStyle(color: Colors.grey),
                labelText: 'Tahun',
                labelStyle: TextStyle(color: Colors.white),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: nilai,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Masukkan Nilai',
                hintStyle: TextStyle(color: Colors.grey),
                labelText: 'Nilai',
                labelStyle: TextStyle(color: Colors.white),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
              onPressed: () {
                localstats.add({
                  'judul': judul.text,
                  'tahun': tahun.text,
                  'nilai': nilai.text,
                });
                Navigator.pop(context);
              },
              child: const Text('Simpan'))
        ],
      ),
    );
  }
}
