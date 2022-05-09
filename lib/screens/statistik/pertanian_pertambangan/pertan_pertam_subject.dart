import 'package:cirebon_onstats/model/statistik/statistik_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PertanPertamSubjectScreen extends StatefulWidget {
  const PertanPertamSubjectScreen({Key? key}) : super(key: key);

  @override
  State<PertanPertamSubjectScreen> createState() => _PertanPertamSubjectScreenState();
}

class _PertanPertamSubjectScreenState extends State<PertanPertamSubjectScreen> {
  @override
  Widget build(BuildContext context) {
    var listSubject = Provider.of<StatistikViewModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertanian dan Pertambangan'),
      ),
      body: FutureBuilder(
        future: listSubject.getAllSubject(3),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: listSubject.subject.length,
            itemBuilder: (context, index) {
              return ListTile(
                textColor: Colors.white,
                onTap: () => Navigator.pushNamed(context, '/pertanpertamVariable',
                    arguments: listSubject.subject[index].sub_id),
                title: Text(listSubject.subject[index].title),
              );
            },
          );
        },
      ),
    );
  }
}
