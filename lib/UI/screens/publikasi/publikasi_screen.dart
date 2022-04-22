import 'package:cirebon_onstats/model/publikasi/publikasi_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PublikasiScreen extends StatefulWidget {
  const PublikasiScreen({Key? key}) : super(key: key);

  @override
  State<PublikasiScreen> createState() => _PublikasiScreenState();
}

class _PublikasiScreenState extends State<PublikasiScreen> {
  @override
  Widget build(BuildContext context) {
    var publikasiData = Provider.of<PublikasiViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Publikasi'),
        backgroundColor: const Color(0xFF043277),
      ),
      body: FutureBuilder(
        future: publikasiData.getAllPublikasi(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: publikasiData.publikasi.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  // Navigator.pushNamed(context, '', arguments: '');
                },
                leading: CircleAvatar(
                  child: Text('${publikasiData.publikasi[index].pub_id}'),
                ),
                title: Text(publikasiData.publikasi[index].title),
                subtitle: Text(publikasiData.publikasi[index].issn),
                trailing: Text(publikasiData.publikasi[index].rl_date),
              );
            },
          );
        },
      ),
    );
  }
}
