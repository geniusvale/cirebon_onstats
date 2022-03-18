import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageCard extends StatelessWidget {
  final Color warnaKiri, warnaKanan;

  const ImageCard({Key? key, required this.warnaKiri, required this.warnaKanan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 80,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [warnaKiri, warnaKanan]),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image.asset('assets/images/berita-hero.png'),
          Text('Sosial dan Kependudukan',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14))),
        ],
      ),
    );
  }
}
