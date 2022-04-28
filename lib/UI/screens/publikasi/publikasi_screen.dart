import 'package:cirebon_onstats/model/publikasi/publikasi_model.dart';
import 'package:cirebon_onstats/model/publikasi/publikasi_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PublikasiScreen extends StatefulWidget {
  const PublikasiScreen({Key? key}) : super(key: key);

  @override
  State<PublikasiScreen> createState() => _PublikasiScreenState();
}

class _PublikasiScreenState extends State<PublikasiScreen> {
  final scrollController = ScrollController();
  bool hasMore = true;
  int initPage = 1;
  List<PublikasiModel> pub = [];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(
      () {
        if (scrollController.position.maxScrollExtent ==
            scrollController.offset) {
          PublikasiViewModel().getAllPublikasi(initPage);
          setState(() {
            initPage++;
          });
        }
        if (scrollController.position.minScrollExtent ==
            scrollController.offset) {
          PublikasiViewModel().getAllPublikasi(initPage);
          setState(() {
            initPage--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var publikasiData = Provider.of<PublikasiViewModel>(context);
    return Scaffold(
      backgroundColor: const Color(0xFF043277),
      appBar: AppBar(
        title: const Text('Publikasi'),
        backgroundColor: const Color(0xFF043277),
      ),
      body: FutureBuilder(
        future: publikasiData.getAllPublikasi(initPage),
        builder: (context, snapshot) {
          return ListView.builder(
            padding: const EdgeInsets.all(8.0),
            controller: scrollController,
            itemCount: publikasiData.publikasi.length + 1,
            itemBuilder: (context, index) {
              if (index < publikasiData.publikasi.length) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/publikasiDetail',
                          arguments: publikasiData.publikasi[index].pub_id);
                    },
                    title: Text(publikasiData.publikasi[index].title),
                    subtitle: Text(publikasiData.publikasi[index].size!),
                    trailing: const Icon(Icons.chevron_right_outlined),
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: hasMore
                        ? const Center(child: CircularProgressIndicator())
                        : const Text('No More Data'),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
