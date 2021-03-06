import 'package:cirebon_onstats/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cirebon_onstats/firebase_options.dart';
import 'package:page_transition/page_transition.dart';

import 'screens/pages.dart';

import 'model/statistik/statistik_viewmodel.dart';
import 'model/berita/berita_viewmodel.dart';
import 'model/publikasi/publikasi_viewmodel.dart';
import 'model/brs/brs_viewmodel.dart';
import 'model/infografis/infografis_viewmodel.dart';

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
    // final navigatorKey = GlobalKey<NavigatorState>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BeritaViewModel()),
        ChangeNotifierProvider(create: (_) => BRSViewModel()),
        ChangeNotifierProvider(create: (_) => PublikasiViewModel()),
        ChangeNotifierProvider(create: (_) => StatistikViewModel()),
        ChangeNotifierProvider(create: (_) => InfografisViewModel()),
      ],
      child: MaterialApp(
        // navigatorKey: navigatorKey,
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
          progressIndicatorTheme: const ProgressIndicatorThemeData(
              circularTrackColor: Colors.white),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Cirebon OnStats',
        initialRoute: '/',
        routes: {
          '/': (context) => const Beranda(),
          '/login': (context) => LoginScreen(),
          // '/infografisScreen': (context) => const InfografisScreen(),
          // '/lokalStatsScreen': (context) => const LokalStatsScreen(),
          '/addLokalData': (context) => const AddLokalDataScreen(),
          // '/tentang': (context) => const TentangScreen(),
          '/berita': (context) => const BeritaScreen(),
          // '/beritaDetail': (context) => const BeritaDetailScreen(),
          '/brs': (context) => const BRSScreen(),
          // '/brsDetail': (context) => const BRSDetailScreen(),
          '/publikasi': (context) => const PublikasiScreen(),
          // '/publikasiDetail': (context) => const PublikasiDetailScreen(),
          '/sosdukSubject': (context) => const SosDukSubjectScreen(),
          '/sosdukVariable': (context) => const SosDukVariableScreen(),
          '/sosdukData': (context) => const SosDukDataScreen(),
          '/ekoperdagSubject': (context) => const EkoPerdagSubjectScreen(),
          '/ekoperdagVariable': (context) => const EkoPerdagVariableScreen(),
          '/ekoperdagData': (context) => const EkoPerdagDataScreen(),
          '/pertanpertamSubject': (context) =>
              const PertanPertamSubjectScreen(),
          '/pertanpertamVariable': (context) =>
              const PertanPertamVariableScreen(),
          '/pertanpertamData': (context) => const PertanPertamDataScreen(),
        },
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/beritaDetail':
              return PageTransition(
                child: const BeritaDetailScreen(),
                type: PageTransitionType.scale,
                alignment: Alignment.topRight,
                settings: settings,
              );
            case '/brsDetail':
              return PageTransition(
                child: const BRSDetailScreen(),
                type: PageTransitionType.scale,
                alignment: Alignment.topRight,
                settings: settings,
              );
            case '/publikasiDetail':
              return PageTransition(
                child: const PublikasiDetailScreen(),
                type: PageTransitionType.scale,
                alignment: Alignment.topRight,
                settings: settings,
              );
            case '/infografisScreen':
              return PageTransition(
                child: const InfografisScreen(),
                type: PageTransitionType.scale,
                alignment: Alignment.topRight,
                settings: settings,
              );
            case '/lokalStatsScreen':
              return PageTransition(
                child: const LokalStatsScreen(),
                type: PageTransitionType.scale,
                alignment: Alignment.topRight,
                settings: settings,
              );
            case '/tentang':
              return PageTransition(
                child: const TentangScreen(),
                type: PageTransitionType.scale,
                alignment: Alignment.topRight,
                settings: settings,
              );
            default:
              return null;
          }
        },
      ),
    );
  }
}
