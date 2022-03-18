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
        drawer: DrawerKu(),
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xFF043277),
          ),
          backgroundColor: Color(0xFF043277),
          centerTitle: true,
          title: Image.asset('assets/images/appbar-logo.png'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 25),
              CarouselHero(),
              SizedBox(height: 25),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Beranda',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18))),
              ),
              SizedBox(height: 8),
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
              SizedBox(height: 25),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Tabel Statistik Publik',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18))),
              ),
              SizedBox(height: 8),
              ImageCard(
                warnaKiri: Color(0xFF128EDB),
                warnaKanan: Color(0xFF043277),
              ),
              SizedBox(height: 25),
              ImageCard(
                warnaKiri: Color(0xFFEC8611),
                warnaKanan: Color(0xFFDC7418),
              ),
              SizedBox(height: 25),
              ImageCard(
                warnaKiri: Color(0xFF00CC83),
                warnaKanan: Color(0xFF00A66A),
              ),
            ],
          ),
        )));
  }
}
