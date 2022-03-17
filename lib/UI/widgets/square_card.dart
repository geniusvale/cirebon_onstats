import 'package:flutter/material.dart';

class SquareCard extends StatelessWidget {
  final IconData iconLogo;
  final String title;
  final String nilai;
  final int tahun;
  final Color warna;

  SquareCard(
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
        padding: EdgeInsets.all(12),
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
                  '$title',
                  style: TextStyle(color: Colors.white),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '$nilai',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$tahun',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ));
  }
}
