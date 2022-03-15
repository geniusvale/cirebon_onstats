import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF043277),
          centerTitle: true,
          title: Text('Cirebon OnStats'),
          leading: Icon(Icons.menu),
        ),
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                SquareCard(),
                SquareCard(),
              ],
            ),
            SizedBox(height: 25),
            ImageCard(),
          ],
        )));
  }
}