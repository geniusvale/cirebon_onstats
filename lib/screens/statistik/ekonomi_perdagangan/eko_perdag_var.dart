import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/statistik/statistik_viewmodel.dart';

class EkoPerdagVariableScreen extends StatefulWidget {
  const EkoPerdagVariableScreen({Key? key}) : super(key: key);

  @override
  State<EkoPerdagVariableScreen> createState() => _EkoPerdagVariableScreenState();
}

class _EkoPerdagVariableScreenState extends State<EkoPerdagVariableScreen> {
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
          return ListView.builder(
            itemCount: listVar.listVariable.length,
            itemBuilder: (context, index) {
              return ListTile(
                textColor: Colors.white,
                onTap: () => Navigator.pushNamed(context, '/ekoperdagData',
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
