import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/statistik/statistik_viewmodel.dart';

class EkoPerdagDataScreen extends StatefulWidget {
  const EkoPerdagDataScreen({Key? key}) : super(key: key);

  @override
  State<EkoPerdagDataScreen> createState() => _EkoPerdagDataScreenState();
}

class _EkoPerdagDataScreenState extends State<EkoPerdagDataScreen> {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<StatistikViewModel>(context, listen: false);
    final varId = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: FutureBuilder(
        future: data.getStatsData(varId),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done &&
              !snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                Text(data.statsData.dataVar[0].val.toString()),
                Text(data.statsData.dataVar[0].subj.toString()),
              ],
            ),
          );
        },
      ),
    );
  }
}
