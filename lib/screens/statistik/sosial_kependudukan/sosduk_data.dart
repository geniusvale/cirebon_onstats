import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/statistik/statistik_viewmodel.dart';

class SosDukDataScreen extends StatefulWidget {
  const SosDukDataScreen({Key? key}) : super(key: key);

  @override
  State<SosDukDataScreen> createState() => _SosDukDataScreenState();
}

class _SosDukDataScreenState extends State<SosDukDataScreen> {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<StatistikViewModel>(context, listen: false);
    final varId = ModalRoute.of(context)!.settings.arguments as int;

    const headerStyle = TextStyle(
        fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14);

    const txtDefault = TextStyle(color: Colors.white);

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          IconButton(
            onPressed: () async {
              var isi = data.statsData.datacontent.keys.toList();
              print(isi);
              for (var item in data.statsData.vervar!) {
                print(Text(item.val.toString()));
              }
              print(isi);
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: FutureBuilder(
        future: data.getStatsData(varId),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done &&
              !snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var datacontentValue = data.statsData.datacontent.values.toList();
          var datacontentKey = data.statsData.datacontent.keys.toList();

          return ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Label : ${data.statsData.dataVar[0].label.toString()}',
                    style: txtDefault,
                  ),
                  Text(
                    'Variable : ${data.statsData.dataVar[0].val.toString()}',
                    style: txtDefault,
                  ),
                  Text(
                    'Label Vertical Variabel : ${data.statsData.labelvervar}',
                    style: txtDefault,
                  ),
                  Text(
                    'Subjek : ${data.statsData.dataVar[0].subj.toString()}',
                    style: txtDefault,
                  ),
                  Text(
                    'Unit : ${data.statsData.dataVar[0].unit}',
                    style: txtDefault,
                  ),
                  const SizedBox(height: 18),
                  const Text('Cara Membaca Data : ', style: headerStyle),
                  const Text(
                      'Dari Datacontent, beberapa digit awal (dari kiri ke kanan), menunjukkan label dari VerVar (Vertical Variable), dilanjutkan dengan variable, val dari turvar, val dari Tahun, lalu val dari TurTahun.\n\n[valOfVerVar]+[variable]+[valOfTurVar]+[valOfTahun]+[valOfTurTahun] = Nilai of DataContent + Unit.\n\nMaka didapatkan Nilainya dari Nilai of Datacontent + Unit.',
                      style: txtDefault),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text('Val of Datacontent', style: headerStyle),
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.white,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(thickness: 2),
                              itemCount: datacontentKey.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    datacontentKey[index].toString(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Nilai of Datacontent',
                              style: headerStyle),
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.white,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(thickness: 2),
                              itemCount: datacontentValue.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child:
                                      Text(datacontentValue[index].toString()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text('Val of VerVar', style: headerStyle),
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.white,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(thickness: 2),
                              itemCount: data.statsData.vervar!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.vervar![index].val
                                        .toString(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Label of VerVar', style: headerStyle),
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.white,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(thickness: 2),
                              itemCount: data.statsData.vervar!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                      data.statsData.vervar![index].label!),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text('Val of Tahun', style: headerStyle),
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.white,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(thickness: 2),
                              itemCount: data.statsData.tahun!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.tahun![index].val.toString(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Tahun', style: headerStyle),
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.white,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(thickness: 2),
                              itemCount: data.statsData.tahun!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child:
                                      Text(data.statsData.tahun![index].label!),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text('Val of TurTahun', style: headerStyle),
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.white,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(thickness: 2),
                              itemCount: data.statsData.turtahun!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.turtahun![index].val
                                        .toString(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Label of TurTahun', style: headerStyle),
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.white,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(thickness: 2),
                              itemCount: data.statsData.turtahun!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                      data.statsData.turtahun![index].label!),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text('Val of TurVar', style: headerStyle),
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.white,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(thickness: 2),
                              itemCount: data.statsData.turvar!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.turvar![index].val
                                        .toString(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Label of TurVar', style: headerStyle),
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.white,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(thickness: 2),
                              itemCount: data.statsData.turvar!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                      data.statsData.turvar![index].label!),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
