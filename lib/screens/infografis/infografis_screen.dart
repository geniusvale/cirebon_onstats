import 'package:cirebon_onstats/model/infografis/infografis_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InfografisScreen extends StatefulWidget {
  const InfografisScreen({Key? key}) : super(key: key);

  @override
  State<InfografisScreen> createState() => _InfografisScreenState();
}

class _InfografisScreenState extends State<InfografisScreen> {
  @override
  Widget build(BuildContext context) {
    var infografisData = Provider.of<InfografisViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Infografis'),
      ),
      body: FutureBuilder(
        future: infografisData.getAllInfografis(),
        builder: (context, snapshot) {
          return Container();
        },
      ),
    );
  }
}
