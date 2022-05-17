import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/statistik/statistik_viewmodel.dart';

class SosDukVariableScreen extends StatefulWidget {
  const SosDukVariableScreen({Key? key}) : super(key: key);

  @override
  State<SosDukVariableScreen> createState() => _SosDukVariableScreenState();
}

class _SosDukVariableScreenState extends State<SosDukVariableScreen> {
  @override
  Widget build(BuildContext context) {
    var listVar = Provider.of<StatistikViewModel>(context, listen: false);
    final subId = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: FutureBuilder(
        future: listVar.getAllVariable(subId),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done &&
              !snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: listVar.listVariable.length,
            itemBuilder: (context, index) {
              return ListTile(
                textColor: Colors.white,
                onTap: () => Navigator.pushNamed(context, '/sosdukData',
                    arguments: listVar.listVariable[index].var_id),
                title: Text(listVar.listVariable[index].title!),
              );
            },
          );
        },
      ),
    );
  }
}
