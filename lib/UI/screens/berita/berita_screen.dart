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
        title: Text('Berita'),
        backgroundColor: const Color(0xFF043277),
      ),
      body: FutureBuilder(
        future: beritaData.getAllBerita(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: beritaData.berita.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/beritaDetail',
                      arguments: beritaData.berita[index]);
                },
                leading: CircleAvatar(
                    child: Text('${beritaData.berita[index].news_id}')),
                title: Text(beritaData.berita[index].title),
                subtitle: Text(beritaData.berita[index].news),
                trailing: Text(beritaData.berita[index].rl_date),
              );
            },
          );
        },
      ),
    );
  }
}
