import 'package:cirebon_onstats/screens/tentang/informasi_umum.dart';
import 'package:cirebon_onstats/screens/tentang/pengolahan_data.dart';
import 'package:cirebon_onstats/screens/tentang/profil_pejabat.dart';
import 'package:cirebon_onstats/screens/tentang/struktur_organisasi.dart';
import 'package:cirebon_onstats/screens/tentang/tugas_fungsi_kewenangan.dart';
import 'package:cirebon_onstats/screens/tentang/visi_misi.dart';
import 'package:flutter/material.dart';

class TentangScreen extends StatefulWidget {
  const TentangScreen({Key? key}) : super(key: key);

  @override
  State<TentangScreen> createState() => _TentangScreenState();
}

class _TentangScreenState extends State<TentangScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tentang BPS'),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Informasi Umum',
            ),
            Tab(
              text: 'Visi dan Misi',
            ),
            Tab(
              text: 'Struktur Organisasi',
            ),
            Tab(
              text: 'Tugas, Fungsi dan Kewenangan',
            ),
            Tab(
              text: 'Pengolahan Data',
            ),
            Tab(
              text: 'Profil Pejabat',
            ),
          ]),
        ),
        body: const TabBarView(children: [
          InformasiUmum(),
          VisiMisi(),
          StrukturOrganisasi(),
          TugasFungsiKewenangan(),
          PengolahanData(),
          ProfilPejabat(),
        ]),
      ),
    );
  }
}
