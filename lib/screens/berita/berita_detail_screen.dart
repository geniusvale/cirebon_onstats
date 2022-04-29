import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';

import '../../../model/berita/berita_viewmodel.dart';

class BeritaDetailScreen extends StatefulWidget {
  const BeritaDetailScreen({Key? key}) : super(key: key);

  @override
  State<BeritaDetailScreen> createState() => _BeritaDetailScreenState();
}

class _BeritaDetailScreenState extends State<BeritaDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var beritaData = Provider.of<BeritaViewModel>(context, listen: false);
    final id = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      backgroundColor: const Color(0xFF043277),
      appBar: AppBar(
        title: const Text('Detail Berita'),
        backgroundColor: const Color(0xFF043277),
      ),
      body: FutureBuilder(
        future: beritaData.getBeritaDetail(id),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done &&
              !snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  '${beritaData.beritaDetail.picture}',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                ),
                Text(
                  beritaData.beritaDetail.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
                Text(
                  'Tanggal Rilis : ${beritaData.beritaDetail.rl_date}',
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Html(
                  data: beritaData.beritaDetail.news,
                  style: {'body': Style(color: Colors.white)},
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
