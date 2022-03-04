import 'package:cirebon_onstats/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cirebon OnStats',
      home: Scaffold(
        appBar: AppBar(), 
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 150,
                    width: 150,
                    color: Colors.blueAccent,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Icon(Icons.people),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Jumlah Penduduk Kota Cirebon'),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text('21,170'),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text('2020'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 150,
                    width: 150,
                    color: Colors.greenAccent,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Icon(Icons.map),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Luas Daerah (km2)'),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text('21,170'),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text('2019'),
                        )
                      ],
                    ),
                  )
                ],

              ),
              SizedBox(height: 18),
              Container(
                width: 150,
                height: 150,
                color: Colors.greenAccent,
              ),
              SizedBox(height: 12),
              Container(
                width: 150,
                height: 150,
                color: Colors.redAccent,
              ),
            ],
          )
        )
      ),
    );
  }
}
