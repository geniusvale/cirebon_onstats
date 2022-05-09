import 'package:cirebon_onstats/model/statistik/statistik_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EkoPerdagSubjectScreen extends StatefulWidget {
  const EkoPerdagSubjectScreen({Key? key}) : super(key: key);

  @override
  State<EkoPerdagSubjectScreen> createState() => _EkoPerdagSubjectScreenState();
}

class _EkoPerdagSubjectScreenState extends State<EkoPerdagSubjectScreen> {
  @override
  Widget build(BuildContext context) {
    var listSubject = Provider.of<StatistikViewModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ekonomi dan Perdagangan'),
      ),
      body: FutureBuilder(
        future: listSubject.getAllSubject(2),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: listSubject.subject.length,
            itemBuilder: (context, index) {
              return ListTile(
                textColor: Colors.white,
                onTap: () => Navigator.pushNamed(context, '/ekoperdagVariable',
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
