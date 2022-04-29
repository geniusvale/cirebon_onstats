import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageCard extends StatelessWidget {
  final Color warnaKiri, warnaKanan;
  final String title;
  final String logo;

  ImageCard(
      {Key? key,
      required this.warnaKiri,
      required this.warnaKanan,
      required this.title,
      required this.logo})
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
          Expanded(child: Image.asset(logo)),
          Expanded(
            child: Text(title,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
