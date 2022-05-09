import 'package:flutter/material.dart';

class VisiMisi extends StatelessWidget {
  const VisiMisi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 8),
            Center(
              child: Text(
                'Visi Misi',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '• Visi',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Penyedia Data Statistik Berkualitas untuk Indonesia Maju',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '• Misi',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '1. Menyediakan statistik berkualitas yang berstandar nasional dan internasional\n\n2. Membina K/L/D/I melalui Sistem Statistik Nasional yang berkesinambungan\n\n3. Mewujudkan pelayanan prima di bidang statistik untuk terwujudnya Sistem Statistik Nasional\n\n4. Membangun SDM yang unggul dan adaptif berlandaskan nilai profesionalisme, integritas dan amanah',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '• Nilai-Nilai Inti',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Core values (nilai–nilai inti) BPS merupakan pondasi yang kokoh untuk membangun jati diri dan penuntun perilaku setiap insan BPS dalam melaksanakan tugas.\n\n Nilai-nilai Inti BPS terdiri dari : ',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '1. PROFESIONAL',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'a. Kompeten\nMempunyai keahlian dalam bidang tugas yang diemban\n\nb. Efektif\nMemberikan hasil maksimal\n\nc. Efisien\nMengerjakan setiap tugas secara produktif, dengan sumber daya minimal\n\nd. Inovatif\nSelalu melaukan permbaruan dan/atau penyempurnaan melalui proses pembelajaran diri secara terus menerus\n\ne. Sistemik\nMeyakini bahwa setiap pekerjaan mempunyai tata urutan proses perkerjaan yang satu menjadi bagian tidak terpisahkan dari  pekerjaan yang lain.\n',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '2. INTEGRITAS',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'a. Dedikasi\nMemiliki pengabdian yang tinggi terhadap profesi yang diemban dan institusi\n\nb. Disiplin\nMelaksanakan pekerjaan sesuai dengan ketentuan yang telah ditetapkan\n\nc. Konsisten\nSatunya kata dengan perbuatan\n\nd. Terbuka\nMenghargai ide, saran, pendapat, masukan, dan kritik dari berbagai pihak\n\ne. Akuntabel\nBertanggung jawab dan setiap langkahnya terukur\n',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '3. AMANAH',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'a. Terpercaya\nMelaksanakan pekerjaan sesuai dengan ketentuan, yang tidak hanya didasarkan pada logika tetapi juga sekaligus menyentuh dimensi mental spiritual\n\nb. Jujur\n Melaksanakan semua pekerjaan dengan tidak menyimpang dari prinsip moralitas\n\nc. Tulus\nMelaksanakan tugas tanpa pamrih, menghindari konflik kepentingan (pribadi, kelompok, dan golongan), serta mendedikasikan semua tugas untuk perlindungan kehidupan manusia, sebagai amal ibadah atau perbuatan untuk Tuhan Yang Maha Esa\n\nd. Adil\nMenempatkan sesuatu secara berkeadilan dan memberikan haknya\n',
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
