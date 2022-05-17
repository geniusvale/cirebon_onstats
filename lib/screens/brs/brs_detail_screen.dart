import 'package:cirebon_onstats/model/brs/brs_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:cirebon_onstats/api/download.dart';

class BRSDetailScreen extends StatefulWidget {
  const BRSDetailScreen({Key? key}) : super(key: key);

  @override
  State<BRSDetailScreen> createState() => _BRSDetailScreenState();
}

class _BRSDetailScreenState extends State<BRSDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var brsData = Provider.of<BRSViewModel>(context, listen: false);
    final id = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail BRS'),
      ),
      body: FutureBuilder(
        future: brsData.getBRSDetail(id),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done &&
              !snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Text(
                  brsData.brsDetail.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Jadwal Rilis : ' + brsData.brsDetail.rl_date,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Ukuran File : ' + brsData.brsDetail.size!,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton.icon(
                    onPressed: () => openFile(
                        url: brsData.brsDetail.pdf!.toString(),
                        fileName: '${brsData.brsDetail.title}.pdf'),
                    icon: const Icon(Icons.download, color: Colors.white),
                    label: const Text('Unduh',
                        style: TextStyle(color: Colors.white))),
                Html(
                  data: brsData.brsDetail.abstract,
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
