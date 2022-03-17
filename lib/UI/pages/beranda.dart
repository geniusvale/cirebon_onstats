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
          title: Text('Cirebon OnStats'),
        ),
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 25),
            CarouselHero(),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                SquareCard(
                  iconLogo: Icons.people,
                  warna: Colors.lightBlue,
                  title: 'Jumlah Penduduk Kota Cirebon',
                  nilai: '12,000',
                  tahun: 2020,
                ),
                SquareCard(
                  iconLogo: Icons.map,
                  warna: Colors.orange,
                  title: 'Luas Wilayah (km2)',
                  nilai: '130',
                  tahun: 2013,
                ),
              ],
            ),
            SizedBox(height: 25),
            ImageCard(
              warnaKiri: Colors.yellow,
              warnaKanan: Colors.green,
            ),
            SizedBox(height: 25),
            ImageCard(
              warnaKiri: Colors.blueAccent,
              warnaKanan: Colors.amberAccent,
            ),
          ],
        )));
  }
}
