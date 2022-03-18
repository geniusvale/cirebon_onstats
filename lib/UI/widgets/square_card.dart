import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SquareCard extends StatelessWidget {
  final IconData iconLogo;
  final String title;
  final String nilai;
  final int tahun;
  final Color warna;

  const SquareCard(
      {Key? key,
      required this.title,
      required this.nilai,
      required this.tahun,
      required this.warna,
      required this.iconLogo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: warna,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconLogo,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  nilai,
                  style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  tahun.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ));
  }
}
