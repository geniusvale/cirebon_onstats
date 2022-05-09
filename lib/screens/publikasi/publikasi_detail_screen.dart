import 'package:cirebon_onstats/model/publikasi/publikasi_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';

class PublikasiDetailScreen extends StatefulWidget {
  const PublikasiDetailScreen({Key? key}) : super(key: key);

  @override
  State<PublikasiDetailScreen> createState() => _PublikasiDetailScreenState();
}

class _PublikasiDetailScreenState extends State<PublikasiDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var pubData = Provider.of<PublikasiViewModel>(context, listen: false);
    final id = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Publikasi Detail'),
      ),
      body: FutureBuilder(
        future: pubData.getPubDetail(id),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done &&
              !snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 8),
                //Row 1 - Header Gambar dan Judul
                Row(
                  children: [
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        children: [
                          Image.network(pubData.pubDetail.cover),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pubData.pubDetail.title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Nomor Katalog : ' + pubData.pubDetail.kat_no!,
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Nomor Publikasi : ' + pubData.pubDetail.pub_no!,
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            'ISSN / ISBN : ' + pubData.pubDetail.issn,
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Tanggal Rilis : ' + pubData.pubDetail.rl_date,
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Ukuran File : ' + pubData.pubDetail.size!,
                            style: const TextStyle(color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () async {
                              // var dlDir = await getExternalStorageDirectory();
                              // String fullPath =
                              //     dlDir!.path + '${pubData.pubDetail.pdf}';
                              // Dio().download(
                              //     '${pubData.pubDetail.pdf}', fullPath);
                            },
                            icon: const Icon(
                              Icons.download,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Row 2 - Detail
                Row(
                  children: [
                    Expanded(
                      child: Html(
                        data: pubData.pubDetail.abstract!,
                        style: {'body': Style(color: Colors.white)},
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
