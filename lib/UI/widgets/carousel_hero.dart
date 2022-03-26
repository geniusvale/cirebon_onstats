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
        Image.asset('assets/images/berita-hero.png'),
        Image.asset('assets/images/data-statistik-hero.png'),
        Image.asset('assets/images/infografis-hero.png'),
        Image.asset('assets/images/publikasi-hero.png'),
      ],
    );
  }
}
