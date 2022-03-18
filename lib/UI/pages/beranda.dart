import 'package:cirebon_onstats/UI/widgets/carousel_hero.dart';
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
        drawer: const DrawerKu(),
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(0xFF043277),
          ),
          backgroundColor: Color(0xFF043277),
          centerTitle: true,
          title: Container(width: 130, height: 36, child: Image.asset('assets/images/appbar-logo.png')),
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
                child: Text('Beranda',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18))),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
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
                child: Text('Tabel Statistik Publik',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18))),
              ),
              const SizedBox(height: 8),
              ImageCard(
                warnaKiri: Color(0xFF128EDB),
                warnaKanan: Color(0xFF043277),
              ),
              const SizedBox(height: 25),
              ImageCard(
                warnaKiri: Color(0xFFEC8611),
                warnaKanan: Color(0xFFDC7418),
              ),
              const SizedBox(height: 25),
              ImageCard(
                warnaKiri: Color(0xFF00CC83),
                warnaKanan: Color(0xFF00A66A),
              ),
            ],
          ),
        )));
  }
}
