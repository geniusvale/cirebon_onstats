import 'package:flutter/material.dart';

class PengolahanData extends StatelessWidget {
  const PengolahanData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: const [
            SizedBox(height: 8),
            Text(
              'Pengolahan Data',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Tahap pengolahan data sangat menentukan seberapa jauh tingkat keakuratan dan ketepatan data statistik yang dihasilkan. BPS merupakan instansi perintis dalam penggunaan komputer karena telah memulai menggunakannya sejak sekitar 1960. Sebelum menggunakan komputer, BPS menggunakan kalkulator dan alat hitung sipoa dalam mengolah data.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Teknologi komputer yang diterapkan di BPS selalu disesuaikan dengan perkembangan teknologi informasi dan juga mengacu kepada kebutuhan. Personal komputer yang secara umum lebih murah dan efisien telah dicoba digunakan untuk menggantikan mainframe. Sejak 1980-an, personal komputer telah digunakan di seluruh kantor BPS provinsi, diikuti dengan penggunaan komputer di seluruh BPS kabupaten dan kota sejak 1992.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Dengan menggunakan personal komputer, kantor statistik di daerah dapat segera memproses pengolahan data, yang merupakan rangkaian kegiatan yang dimulai dari pengumpulan data, kemudian memasukkan data mentah ke dalam komputer dan selanjutnya data tersebut dikirim ke BPS pusat untuk diolah menjadi data nasional.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Pengolahan data menggunakan personal komputer telah lama menjadi contoh pengolahan yang diterapkan oleh direktorat teknis di BPS pusat, terutama jika direktorat tersebut harus mempublikasikan hasil yang diperoleh dari survei yang diselenggarakan.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Pengolahan data Sensus Penduduk tahun 2000 telah menggunakan mesin scanner, tujuannya untuk mempercepat kegiatan pengolahan data. Efek positif dari penggunaan komputer oleh direktorat teknis yaitu selain lebih cepat, juga dapat memotivasi pegawai yang terlibat turut bertanggung jawab untuk menghasilkan sebanyak mungkin data statistik dan indikator secara tepat waktu dan akurat dibanding sebelumnya. Selain itu, penggunaan computer sangat mendukung BPS dalam menghasilkan berbagai data statistik dan indikator-indikator yang rumit seperti kemiskinan, Input-Output (I-O) table, Social Accounting Matrix (SAM), dan berbagai macam indeks komposit dalam waktu yang relatif singkat.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Pada 1993, BPS mulai mengembangkan sebuah sistem informasi statistik secara geografis khususnya untuk pengolahan data wilayah sampai unit administrasi yang terkecil yang telah mulai dibuat secara manual sejak 1970. Data wilayah ini dibuat khususnya untuk menyajikan karakteristik daerah yang menonjol yang diperlukan oleh para perumus kebijakan dalam perencanaan pembangunan.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Dalam mengolah data, BPS juga telah mengembangkan berbagai program aplikasi untuk data entry, editing, validasi, tabulasi dan analisis dengan menggunakan berbagai macam bahasa dan paket komputer. BPS bertanggung jawab untuk mengembangkan berbagai perangkat lunak komputer serta mentransfer pengetahuan dan keahliannya kepada staf BPS daerah.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Pembangunan infrastruktur teknologi informasi di BPS didasarkan pada tujuan yang ingin dicapai yaitu mengikuti perkembangan permintaan dan kebutuhan dalam pengolahan data statistik; melakukan pembaharuan/inovasi dalam hal metode kerja yang lebih baik serta memberikan kemudahan kepada publik dalam mendapatkan informasi statistik.',
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
