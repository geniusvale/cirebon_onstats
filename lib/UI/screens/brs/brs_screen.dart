import 'package:cirebon_onstats/model/brs/brs_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BRSScreen extends StatefulWidget {
  const BRSScreen({Key? key}) : super(key: key);

  @override
  State<BRSScreen> createState() => _BRSScreenState();
}

class _BRSScreenState extends State<BRSScreen> {
  @override
  Widget build(BuildContext context) {
    var brsData = Provider.of<BRSViewModel>(context);

    return Scaffold(
      backgroundColor: const Color(0xFF043277),
      appBar: AppBar(
        title: const Text('BRS'),
        backgroundColor: const Color(0xFF043277),
      ),
      body: FutureBuilder(
        future: brsData.getAllBRS(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: brsData.brs.length,
            itemBuilder: (context, index) {
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
            },
          );
        },
      ),
    );
  }
}
