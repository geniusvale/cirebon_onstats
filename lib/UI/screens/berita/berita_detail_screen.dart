import 'package:cirebon_onstats/model/berita/berita_model.dart';
import 'package:flutter/material.dart';
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
    var beritaData = Provider.of<BeritaViewModel>(context);
    final data = ModalRoute.of(context)!.settings.arguments as BeritaModel;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Berita'),
        backgroundColor: const Color(0xFF043277),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${data.news_id}'),
            Text('${data.title}'),
            Text('${data.news}'),
            Text('${data.rl_date}'),
          ],
        ),
      ),
    );
  }
}
