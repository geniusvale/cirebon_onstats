import 'package:cirebon_onstats/UI/widgets/carousel_hero.dart';
import 'package:cirebon_onstats/api/berita_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF043277),
      drawer: const DrawerKu(),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xFF043277),
        ),
        backgroundColor: const Color(0xFF043277),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              BeritaAPI().getBeritaDetail(4);
            },
            icon: const Icon(Icons.refresh),
          )
        ],
        title: SizedBox(
          width: 130,
          height: 36,
          child: Image.asset('assets/images/appbar-logo.png'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 25),
              const CarouselHero(),
              const SizedBox(height: 25),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  'Beranda',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  SquareCard(
                    iconLogo: Icons.people,
                    warna: Color(0xFF128EDB),
                    title: 'Jumlah Penduduk Kota Cirebon',
                    nilai: '21,170',
                    tahun: 2020,
                  ),
                  SquareCard(
                    iconLogo: Icons.map,
                    warna: Color(0xFF00CC83),
                    title: 'Luas Wilayah (km2)',
                    nilai: '37,36',
                    tahun: 2019,
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Tabel Statistik Publik',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ImageCard(
                title: 'Sosial dan Kependudukan',
                logo: 'assets/images/sosduk-logo.png',
                warnaKiri: const Color(0xFF128EDB),
                warnaKanan: const Color(0xFF043277),
              ),
              const SizedBox(height: 25),
              ImageCard(
                title: 'Ekonomi dan Perdagangan',
                logo: 'assets/images/ekoper-logo.png',
                warnaKiri: const Color(0xFFEC8611),
                warnaKanan: const Color(0xFFDC7418),
              ),
              const SizedBox(height: 25),
              ImageCard(
                title: 'Pertanian dan Pertambangan',
                logo: 'assets/images/pertani-logo.png',
                warnaKiri: const Color(0xFF00CC83),
                warnaKanan: const Color(0xFF00A66A),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
