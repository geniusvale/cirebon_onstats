import 'package:cirebon_onstats/model/publikasi/publikasi_viewmodel.dart';
import 'package:flutter/material.dart';
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
      backgroundColor: const Color(0xFF043277),
      appBar: AppBar(
        title: const Text('Publikasi Detail'),
        backgroundColor: const Color(0xFF043277),
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
                Text(pubData.pubDetail.title),
              ],
            ),
          );
        },
      ),
    );
  }
}
