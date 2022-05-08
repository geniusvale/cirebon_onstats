import 'package:flutter/material.dart';

class ProfilPejabat extends StatelessWidget {
  const ProfilPejabat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          const Center(
            child: Text(
              'Profil Pejabat',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'Joni Kasmuri',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Image.asset(
              'assets/images/JoniKasmuri.png',
              width: 200,
              height: 200,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Bapak yang memiliki hobi joging dan tinggi badan 170 cm ini lahir di Pontianak pada tahun 1968. Memiliki 1 orang putri dan sangat menjaga pola makan dengan baik. Sebelum menjabat Kepala BPS Kota Cirebon pada tahun 2018, beliau menjabat Kepala Bidang Neraca Wilayah di BPS Provinsi Riau. Mendapatkan gelar ST, SE, ME karena pendidikan yang dijalaninya dari D4, S1, S2 semua di bidang Ekonomi dari perguruan tinggi terkemuka di DKI Jakarta. Oleh karenanya jangan heran kalau bicara tentang ekonomi tidak akan habisnya dibahas.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          //Second Profile
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'Rohana Susiawati',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Image.asset(
              'assets/images/RohanaSusiawati.png',
              width: 200,
              height: 200,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Ibu 2 anak ini memiliki tinggi badan hampir 170 cm kurang sedikit. Kalau hari Jumat pagi, beliau menunaikan hobinya joging di sekitar Stadion Bima. Lahir di Magelang Jawa Tengah, kini beliau menjabat Kepala Subbag Umum BPS Kota Cirebon. Berpengalaman menjadi Kasubag Tata Usaha di BPS yang wilayah kerjanya jauh lebih luas, yaitu BPS Kabupaten Indramayu selama 6 Tahun. Riwayat pendidikan terakhir beliau mendapat gelar Dra dari Universitas terkemuka di Jogjakarta.',
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
