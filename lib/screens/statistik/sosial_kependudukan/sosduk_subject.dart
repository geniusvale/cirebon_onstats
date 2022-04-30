import 'package:cirebon_onstats/model/statistik/statistik_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SosDukSubjectScreen extends StatefulWidget {
  const SosDukSubjectScreen({Key? key}) : super(key: key);

  @override
  State<SosDukSubjectScreen> createState() => _SosDukSubjectScreenState();
}

class _SosDukSubjectScreenState extends State<SosDukSubjectScreen> {
  @override
  Widget build(BuildContext context) {
    var listSubject = Provider.of<StatistikViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sosial dan Kependudukan'),
        backgroundColor: const Color(0xFF043277),
      ),
      body: FutureBuilder(
        future: listSubject.getAllSubject(1),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: listSubject.subject.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(listSubject.subject[index].title),
              );
            },
          );
        },
      ),
    );
  }
}
