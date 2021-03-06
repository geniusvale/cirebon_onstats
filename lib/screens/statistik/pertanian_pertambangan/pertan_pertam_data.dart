import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/statistik/statistik_viewmodel.dart';

class PertanPertamDataScreen extends StatefulWidget {
  const PertanPertamDataScreen({Key? key}) : super(key: key);

  @override
  State<PertanPertamDataScreen> createState() => _PertanPertamDataScreenState();
}

class _PertanPertamDataScreenState extends State<PertanPertamDataScreen> {
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 130,
                            height: 130,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                      thickness: 1, color: Colors.white),
                              itemCount: datacontentKey.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    datacontentKey[index].toString(),
                                    style: txtDefault,
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
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 130,
                            height: 130,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                      thickness: 1, color: Colors.white),
                              itemCount: datacontentValue.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    datacontentValue[index].toString(),
                                    style: txtDefault,
                                  ),
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
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 130,
                            height: 130,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                      thickness: 1, color: Colors.white),
                              itemCount: data.statsData.vervar!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.vervar![index].val
                                        .toString(),
                                    style: txtDefault,
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
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 130,
                            height: 130,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                      thickness: 1, color: Colors.white),
                              itemCount: data.statsData.vervar!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.vervar![index].label!,
                                    style: txtDefault,
                                  ),
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
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 130,
                            height: 130,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                      thickness: 1, color: Colors.white),
                              itemCount: data.statsData.tahun!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.tahun![index].val.toString(),
                                    style: txtDefault,
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
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 130,
                            height: 130,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                      thickness: 1, color: Colors.white),
                              itemCount: data.statsData.tahun!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.tahun![index].label!,
                                    style: txtDefault,
                                  ),
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
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 130,
                            height: 130,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                      thickness: 1, color: Colors.white),
                              itemCount: data.statsData.turtahun!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.turtahun![index].val
                                        .toString(),
                                    style: txtDefault,
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
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 130,
                            height: 130,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                      thickness: 1, color: Colors.white),
                              itemCount: data.statsData.turtahun!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.turtahun![index].label!,
                                    style: txtDefault,
                                  ),
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
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 130,
                            height: 130,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                      thickness: 1, color: Colors.white),
                              itemCount: data.statsData.turvar!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.turvar![index].val
                                        .toString(),
                                    style: txtDefault,
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
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            width: 130,
                            height: 130,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                      thickness: 1, color: Colors.white),
                              itemCount: data.statsData.turvar!.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    data.statsData.turvar![index].label!,
                                    style: txtDefault,
                                    textAlign: TextAlign.center,
                                  ),
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
