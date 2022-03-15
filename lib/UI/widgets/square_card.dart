import 'package:flutter/material.dart';

class SquareCard extends StatelessWidget {
  const SquareCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Color(0xFF128EDB),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.people,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  'Jumlah Penduduk Kota Cirebon',
                  style: TextStyle(color: Colors.white),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '21,170',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '2020',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ));
  }
}
