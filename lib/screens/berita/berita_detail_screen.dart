import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:simple_html_css/simple_html_css.dart';

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: beritaData.beritaDetail.picture != snapshot.hasError
                      ? Image.network(
                          '${beritaData.beritaDetail.picture}',
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.contain,
                        )
                      : const SizedBox(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    beritaData.beritaDetail.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Tanggal Rilis : ${beritaData.beritaDetail.rl_date}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 8),
                Html(
                  data: beritaData.beritaDetail.news,
                  style: {'body': Style(color: Colors.white)},
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: HTML.toRichText(
                    context,
                    beritaData.beritaDetail.news,
                    defaultTextStyle: const TextStyle(color: Colors.white),
                  ),
                ),
                Html(
                  data: beritaData.beritaDetail.news,
                  style: {'body': Style(color: Colors.white)},
                ),
                
              ],
            ),
          );
        },
      ),
    );
  }
}
