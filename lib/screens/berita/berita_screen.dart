import 'package:cirebon_onstats/model/berita/berita_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BeritaScreen extends StatefulWidget {
  const BeritaScreen({Key? key}) : super(key: key);

  @override
  State<BeritaScreen> createState() => _BeritaScreenState();
}

class _BeritaScreenState extends State<BeritaScreen> {
  @override
  Widget build(BuildContext context) {
    var beritaData = Provider.of<BeritaViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita'),
      ),
      body: FutureBuilder(
        future: beritaData.getAllBerita(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done &&
              !snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: beritaData.berita.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/beritaDetail',
                        arguments: beritaData.berita[index].news_id);
                  },
                  title: Text(beritaData.berita[index].title),
                  subtitle: Text(beritaData.berita[index].newscat_name!),
                  trailing: const Icon(Icons.chevron_right_outlined),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
