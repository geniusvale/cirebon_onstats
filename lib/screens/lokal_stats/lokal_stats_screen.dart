import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class LokalStatsScreen extends StatefulWidget {
  const LokalStatsScreen({Key? key}) : super(key: key);

  @override
  State<LokalStatsScreen> createState() => _LokalStatsScreenState();
}

class _LokalStatsScreenState extends State<LokalStatsScreen> {
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
    final user = FirebaseAuth.instance.currentUser;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    final Stream<QuerySnapshot> _statsStream =
        FirebaseFirestore.instance.collection('localstats').snapshots();
    CollectionReference localstats = firestore.collection('localstats');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Statistik Lokal'),
        actions: [
          IconButton(
            onPressed: () {
              if (user != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Anda telah login sebagai ${user.email}'),
                  ),
                );
              } else {
                Navigator.pushNamed(context, '/login');
              }
            },
            icon: const Icon(Icons.admin_panel_settings_outlined),
          )
        ],
      ),
      floatingActionButton: user != null
          ? SpeedDial(
              overlayOpacity: 0.2,
              overlayColor: Colors.black,
              animatedIcon: AnimatedIcons.menu_close,
              spaceBetweenChildren: 8,
              children: [
                  SpeedDialChild(
                      onTap: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          context: context,
                          builder: (context) => AddData(
                            judul: judul,
                            tahun: tahun,
                            nilai: nilai,
                            localstats: localstats,
                          ),
                        );
                      },
                      child: const Icon(Icons.add),
                      label: 'Add Data'),
                  SpeedDialChild(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      setState(() {});
                    },
                    backgroundColor: Colors.red,
                    child:
                        const Icon(Icons.logout_outlined, color: Colors.white),
                    label: 'Logout',
                  ),
                ])
          : const Visibility(
              child: SpeedDial(),
              visible: false,
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
            children: snapshot.data!.docs.map((DocumentSnapshot e) {
              var data = e.data()! as Map<String, dynamic>;
              return ListTile(
                onLongPress: () {
                  if (user != null) {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      context: context,
                      builder: (context) => EditForm(
                        data: data,
                        e: e,
                        judul: judul,
                        tahun: tahun,
                        nilai: nilai,
                        localstats: localstats,
                      ),
                    );
                  }
                  return;
                },
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

class EditForm extends StatelessWidget {
  const EditForm({
    Key? key,
    required this.data,
    required this.e,
    required this.judul,
    required this.tahun,
    required this.nilai,
    required this.localstats,
  }) : super(key: key);

  final Map<String, dynamic> data;
  final DocumentSnapshot e;
  final TextEditingController judul;
  final TextEditingController tahun;
  final TextEditingController nilai;
  final CollectionReference<Object?> localstats;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 8),
          TextFormField(
            initialValue: data['judul'],
            onChanged: (val) {
              judul.text = val;
            },
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              hintText: 'Masukkan Judul - E.g "Total Kecamatan"',
              hintStyle: TextStyle(color: Colors.grey),
              labelText: 'Judul',
              labelStyle: TextStyle(color: Colors.black),
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            initialValue: data['tahun'],
            onChanged: (val) {
              tahun.text = val;
            },
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              hintText: 'Masukkan Tahun',
              hintStyle: TextStyle(color: Colors.grey),
              labelText: 'Tahun',
              labelStyle: TextStyle(color: Colors.black),
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            initialValue: data['nilai'],
            onChanged: (val) {
              nilai.text = val;
            },
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              hintText: 'Masukkan Nilai',
              hintStyle: TextStyle(color: Colors.grey),
              labelText: 'Nilai',
              labelStyle: TextStyle(color: Colors.black),
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                      ),
                      onPressed: () async {
                        await localstats.doc(e.id).update({
                          'judul': judul.text,
                          'tahun': tahun.text,
                          'nilai': nilai.text,
                        });
                        judul.clear();
                        tahun.clear();
                        nilai.clear();
                        Navigator.pop(context);
                      },
                      child: const Text('Update'),
                    ),
                  ),
                ),
                IconButton(
                  color: Colors.red,
                  onPressed: () {
                    localstats.doc(e.id).delete();
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.delete_forever_rounded,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AddData extends StatelessWidget {
  const AddData({
    Key? key,
    required this.judul,
    required this.tahun,
    required this.nilai,
    required this.localstats,
  }) : super(key: key);

  final TextEditingController judul;
  final TextEditingController tahun;
  final TextEditingController nilai;
  final CollectionReference<Object?> localstats;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 8),
          TextFormField(
            controller: judul,
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              hintText: 'Masukkan Judul - E.g "Total Kecamatan"',
              hintStyle: TextStyle(color: Colors.grey),
              labelText: 'Judul',
              labelStyle: TextStyle(color: Colors.black),
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: tahun,
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              hintText: 'Masukkan Tahun',
              hintStyle: TextStyle(color: Colors.grey),
              labelText: 'Tahun',
              labelStyle: TextStyle(color: Colors.black),
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: nilai,
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              hintText: 'Masukkan Nilai',
              hintStyle: TextStyle(color: Colors.grey),
              labelText: 'Nilai',
              labelStyle: TextStyle(color: Colors.black),
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                      ),
                      onPressed: () async {
                        await localstats.add({
                          'judul': judul.text,
                          'tahun': tahun.text,
                          'nilai': nilai.text,
                        });
                        judul.clear();
                        tahun.clear();
                        nilai.clear();
                        Navigator.pop(context);
                      },
                      child: const Text('Simpan'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
