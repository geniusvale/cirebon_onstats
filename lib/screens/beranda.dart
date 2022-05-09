import 'package:cirebon_onstats/model/statistik/statistik_viewmodel.dart';
import 'package:cirebon_onstats/widgets/carousel_hero.dart';
import 'package:flutter/material.dart';
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
      drawer: const DrawerKu(),
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              // var test = await StatistikAPI().fetchStatsData(104);
              // print(test);
              var bro = await StatistikViewModel().getStatsData(104);
              print(bro);
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
                  'Data Statistik Publik',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const ImageCard(
                routeName: '/sosdukSubject',
                title: 'Sosial dan Kependudukan',
                logo: 'assets/images/sosduk-logo.png',
                warnaKiri: Color(0xFF128EDB),
                warnaKanan: Color(0xFF043277),
              ),
              const SizedBox(height: 25),
              const ImageCard(
                routeName: '/ekoperdagSubject',
                title: 'Ekonomi dan Perdagangan',
                logo: 'assets/images/ekoper-logo.png',
                warnaKiri: Color(0xFFEC8611),
                warnaKanan: Color(0xFFDC7418),
              ),
              const SizedBox(height: 25),
              const ImageCard(
                routeName: '/pertanpertamSubject',
                title: 'Pertanian dan Pertambangan',
                logo: 'assets/images/pertani-logo.png',
                warnaKiri: Color(0xFF00CC83),
                warnaKanan: Color(0xFF00A66A),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
