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
          if (snapshot.hasData) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: 6,
              itemBuilder: (context, index) => Card(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child:
                            Image.network(infografisData.infografis[index].img),
                      ),
                      Text(infografisData.infografis[index].title)
                      // const Text('Title'),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const Center(
              child: Text(
                'Data Tidak Tersedia',
                style: TextStyle(color: Colors.white),
              ),
            );
          }
        },
      ),
    );
  }
}
