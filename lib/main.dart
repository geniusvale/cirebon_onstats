import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cirebon_onstats/firebase_options.dart';

import 'screens/pages.dart';

import 'model/statistik/statistik_viewmodel.dart';
import 'model/berita/berita_viewmodel.dart';
import 'model/publikasi/publikasi_viewmodel.dart';
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
        ChangeNotifierProvider(create: (_) => StatistikViewModel()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Color(0xFF043277),
            ),
            backgroundColor: Color(0xFF043277),
          ),
          scaffoldBackgroundColor: const Color(0xFF043277),
          primaryColor: const Color(0xFF043277),
          fontFamily: 'Poppins',
          textTheme: const TextTheme().copyWith(
            bodyText1: const TextStyle(color: Colors.white),
          ),
          listTileTheme: const ListTileThemeData(textColor: Colors.black),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
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
          '/sosdukSubject': (context) => const SosDukSubjectScreen(),
          '/sosdukVariable': (context) => const SosDukVariableScreen(),
          '/sosdukData': (context) => const SosDukDataScreen(),
        },
      ),
    );
  }
}
