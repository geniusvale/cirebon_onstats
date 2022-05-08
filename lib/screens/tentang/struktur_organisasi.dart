import 'package:flutter/material.dart';

class StrukturOrganisasi extends StatelessWidget {
  const StrukturOrganisasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          const SizedBox(height: 8),
          const Text(
            'Struktur Organisasi',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Image.asset(
            'assets/images/StrukturOrganisasiBPSKabKot2021.png',
            width: 250,
            height: 250,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Untuk melaksanakan tugas, fungsi, kewenangan, susunan organisasi dan tata kerja tersebut, sesuai Keputusan Kepala BPS Nomor 121 Tahun 2001 tentang Organisasi dan Tata Kerja Perwakilan Badan Pusat Statistik di Daerah, telah ditentukan struktur organisasi Badan Pusat Statistik Kabupaten/Kota, yaitu : ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'a. Kepala\nTugas : memimpin BPS Kabupaten/Kota dengan tugas dan fungsi BPS Kabupaten/Kota serta membina aparatur BPS Kabupaten/Kota agar berdaya guna dan berhasil guna.\n\nb. Sub Bagian Umum\n Tugas : melakukan penyusunan rencana dan program, urusan kepegawaian dan hokum, keuangan, perlengkapan, serta urusan dalam.\n\nc. Kelompok Jabatan Fungsional\nTugas : melakukan kegiatan sesuai dengan jabatan fungsional masing-masing berdasarkan ketentuan peraturan perundang-undangan yang berlaku.\n',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
