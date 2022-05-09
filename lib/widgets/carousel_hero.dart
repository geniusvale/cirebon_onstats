import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselHero extends StatelessWidget {
  const CarouselHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 130.0,
        autoPlay: true,
      ),
      items: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/berita'),
          child: Card(
              child: Image.asset(
            'assets/images/berita-hero.png',
            fit: BoxFit.fill,
          )),
        ),
        GestureDetector(
          onTap: () => Scaffold.of(context).openDrawer(),
          child: Card(
              child: Image.asset(
            'assets/images/data-statistik-hero.png',
            fit: BoxFit.fill,
          )),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/infografisScreen'),
          child: Card(
              child: Image.asset(
            'assets/images/infografis-hero.png',
            fit: BoxFit.fill,
          )),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/publikasi'),
          child: Card(
              child: Image.asset(
            'assets/images/publikasi-hero.png',
            fit: BoxFit.fill,
          )),
        ),
      ],
    );
  }
}
