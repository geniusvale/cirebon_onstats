import 'package:cirebon_onstats/model/publikasi/publikasi_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'ui/screens/pages.dart';

import 'package:cirebon_onstats/firebase_options.dart';
import 'package:cirebon_onstats/model/berita/berita_viewmodel.dart';
import 'model/brs/brs_viewmodel.dart';

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
        ChangeNotifierProvider(create: (_) => BRSViewModel()),
        ChangeNotifierProvider(create: (_) => PublikasiViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cirebon OnStats',
        initialRoute: '/',
        routes: {
          '/': (context) => const Beranda(),
          '/lokalStatsScreen': (context) => const LokalStatsScreen(),
          '/addLokalData': (context) => const AddLokalDataScreen(),
          '/berita': (context) => const BeritaScreen(),
          '/beritaDetail': (context) => const BeritaDetailScreen(),
          '/brs': (context) => const BRSScreen(),
          '/brsDetail': (context) => const BRSDetailScreen(),
          '/publikasi': (context) => const PublikasiScreen(),
          '/publikasiDetail': (context) => const PublikasiDetailScreen(),
        },
      ),
    );
  }
}
