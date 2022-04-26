import 'package:cirebon_onstats/model/brs/brs_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';

class BRSDetailScreen extends StatefulWidget {
  const BRSDetailScreen({Key? key}) : super(key: key);

  @override
  State<BRSDetailScreen> createState() => _BRSDetailScreenState();
}

class _BRSDetailScreenState extends State<BRSDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var brsData = Provider.of<BRSViewModel>(context);
    final id = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      backgroundColor: const Color(0xFF043277),
      appBar: AppBar(
        title: const Text('Detail BRS'),
        backgroundColor: const Color(0xFF043277),
      ),
      body: FutureBuilder(
        future: brsData.getBRSDetail(id),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done &&
              !snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  brsData.brsDetail.title,
                  style: const TextStyle(color: Colors.white),
                ),
                Html(data: brsData.brsDetail.abstract),
              ],
            ),
          );
        },
      ),
    );
  }
}
