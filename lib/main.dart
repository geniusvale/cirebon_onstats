import 'package:cirebon_onstats/UI/screens/berita/berita_screen.dart';
import 'package:cirebon_onstats/firebase_options.dart';
import 'package:cirebon_onstats/model/berita/berita_viewmodel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'UI/screens/pages.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BeritaViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cirebon OnStats',
        initialRoute: '/',
        routes: {
          '/': (context) => Beranda(),
          '/berita': (context) => BeritaScreen(),
          '/beritaDetail': (context) => BeritaDetailScreen(),
        },
      ),
    );
  }
}
