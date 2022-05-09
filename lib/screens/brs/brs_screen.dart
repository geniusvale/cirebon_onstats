import 'package:cirebon_onstats/model/brs/brs_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BRSScreen extends StatefulWidget {
  const BRSScreen({Key? key}) : super(key: key);

  @override
  State<BRSScreen> createState() => _BRSScreenState();
}

class _BRSScreenState extends State<BRSScreen> {
  final scrollController = ScrollController();
  bool hasMore = true;
  int initPage = 1;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(
      () {
        if (scrollController.position.maxScrollExtent ==
            scrollController.offset) {
          BRSViewModel().getAllBRS(initPage);
          setState(() {
            initPage++;
          });
        }
        if (scrollController.position.minScrollExtent ==
            scrollController.offset) {
          BRSViewModel().getAllBRS(initPage);
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
    var brsData = Provider.of<BRSViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita Resmi Statistik'),
      ),
      body: FutureBuilder(
        future: brsData.getAllBRS(initPage),
        builder: (context, snapshot) {
          return ListView.builder(
            padding: const EdgeInsets.all(8.0),
            controller: scrollController,
            itemCount: brsData.brs.length + 1,
            itemBuilder: (context, index) {
              if (index < brsData.brs.length) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/brsDetail',
                          arguments: brsData.brs[index].brs_id);
                    },
                    title: Text(brsData.brs[index].title),
                    subtitle: Text(brsData.brs[index].subj!),
                    trailing: const Icon(Icons.chevron_right_outlined),
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: hasMore
                        ? const CircularProgressIndicator()
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
