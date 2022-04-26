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
      appBar: AppBar(
        title: const Text('Detail Berita'),
        backgroundColor: const Color(0xFF043277),
      ),
      body: FutureBuilder(
        future: beritaData.getBeritaDetail(id),
        builder: (context, snapshot) {
          return ListView(
            children: [
              Text(beritaData.beritaDetail.title),
              Html(data: beritaData.beritaDetail.news),
              Text(beritaData.beritaDetail.rl_date),
            ],
          );
        },
      ),
    );
  }
}
