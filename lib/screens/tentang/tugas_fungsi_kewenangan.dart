import 'package:flutter/material.dart';

class TugasFungsiKewenangan extends StatelessWidget {
  const TugasFungsiKewenangan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: const [
            SizedBox(height: 8),
            Text(
              'Tugas, Fungsi dan Kewenangan',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Tugas, fungsi dan kewenangan BPS telah ditetapkan berdasarkan Peraturan Presiden Nomor 86 Tahun 2007 tentang Badan Pusat Statistik dan Peraturan Kepala Badan Pusat Statistik Nomor 7 Tahun 2008 tentang Organisasi dan Tata Kerja Badan Pusat Statistik.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '1. Tugas\nMelaksanakan tugas pemerintahan dibidang statistik sesuai peraturan perundang-undangan.\n',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '2. Fungsi\n\na. Pengkajian, penyusunan dan perumusan kebijakan dibidang statistik;\n\nb. Pengkajian, penyusunan dan perumusan kebijakan dibidang statistik;\n\nc. Penetapan dan penyelenggaraan statistik dasar;\n\nd. Penetapan sistem statistik nasional;\n\ne. Pembinaan dan fasilitasi terhadap kegiatan instansi pemerintah dibidang kegiatan statistik; dan\n\nf. Penyelenggaraan pembinaan dan pelayanan administrasi umum dibidang perencanaan umum, ketatausahaan, organisasi dan tatalaksana, kepegawaian, keuangan, kearsipan, kehumasan, hukum, perlengkapan dan rumah tangga.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '3. Kewenangan\n\na. Penyusunan rencana nasional secara makro di bidangnya;\n\nb. Penyusunan rencana nasional secara makro di bidangnya;\n\nc. Penetapan sistem informasi di bidangnya;\n\nd. Penetapan dan penyelenggaraan statistik nasional;\n\ne. Kewenangan lain sesuai dengan ketentuan peraturan perundang-undangan yang berlaku, yaitu;\n\nf. i. Perumusan dan pelaksanaan kebijakan tertentu di bidang kegiatan statistik;\n ii. Penyusun pedoman penyelenggaraan survei statistik sektoral.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
