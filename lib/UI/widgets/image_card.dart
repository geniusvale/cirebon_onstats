import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final Color warnaKiri, warnaKanan;

  const ImageCard({Key? key, required this.warnaKiri, required this.warnaKanan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 80,
      padding: EdgeInsets.all(12),
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
          Image.network('https://picsum.photos/200'),
          Text('Sosial dan Kependudukan',
              style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
