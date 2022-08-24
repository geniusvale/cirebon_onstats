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
              // //DataTable
              // DataTable(
              //   columns: [
              //     DataColumn(label: Text(data.statsData.labelvervar)),
              //     const DataColumn(
              //       label: Text('Tahun'),
              //     ),
              //     const DataColumn(
              //       label: Text('Value'),
              //     ),
              //   ],
              //   rows: data.statsData.vervar!.map((e) {
              //     return DataRow(cells: [
              //       DataCell(Text(e.label.toString())),
              //       DataCell(Text(data.statsData.tahun!.last.label.toString())),
              //       DataCell(
              //         Text(datacontentValue.last.toString()),
              //       ),
              //     ]);
              //   }).toList(),
              // ),
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
                  //DataContent
                  Center(
                    child: DataTable(
                      headingTextStyle: headerStyle,
                      dataTextStyle: txtDefault,
                      showBottomBorder: true,
                      border: TableBorder.all(color: Colors.white),
                      columns: const [
                        DataColumn(label: Text('Val of Datacontent')),
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Nilai of \nDatacontent',
                              maxLines: 2,
                            ),
                          ),
                        ),
                      ],
                      rows: [
                        for (var i = 0; i < datacontentKey.length; i++)
                          DataRow(
                            cells: [
                              DataCell(
                                Text(datacontentKey[i].toString()),
                              ),
                              DataCell(
                                Text(datacontentValue[i].toString() +
                                    ' ' +
                                    '${data.statsData.dataVar[0].unit}'),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  //VERVAR
                  Center(
                    child: DataTable(
                      headingTextStyle: headerStyle,
                      dataTextStyle: txtDefault,
                      showBottomBorder: true,
                      border: TableBorder.all(color: Colors.white),
                      columns: [
                        DataColumn(label: Text(data.statsData.labelvervar)),
                        const DataColumn(
                          label: Expanded(
                            child: Text(
                              'Val of \nVerVar',
                              maxLines: 2,
                            ),
                          ),
                        ),
                      ],
                      rows: [
                        for (var i = 0; i < data.statsData.vervar!.length; i++)
                          DataRow(
                            cells: [
                              DataCell(
                                Text(
                                    data.statsData.vervar![i].label.toString()),
                              ),
                              DataCell(
                                Text(data.statsData.vervar![i].val.toString()),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  //TAHUN
                  Center(
                    child: DataTable(
                      headingTextStyle: headerStyle,
                      dataTextStyle: txtDefault,
                      showBottomBorder: true,
                      border: TableBorder.all(color: Colors.white),
                      columns: const [
                        DataColumn(label: Text('Tahun')),
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Val of \nTahun',
                              maxLines: 2,
                            ),
                          ),
                        ),
                      ],
                      rows: [
                        for (var i = 0; i < data.statsData.tahun!.length; i++)
                          DataRow(
                            cells: [
                              DataCell(
                                Text(data.statsData.tahun![i].label.toString()),
                              ),
                              DataCell(
                                Text(data.statsData.tahun![i].val.toString()),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  //TurTAHUN
                  Center(
                    child: DataTable(
                      headingTextStyle: headerStyle,
                      dataTextStyle: txtDefault,
                      showBottomBorder: true,
                      border: TableBorder.all(color: Colors.white),
                      columns: const [
                        DataColumn(label: Text('TurTahun')),
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Val of \nTurTahun',
                              maxLines: 2,
                            ),
                          ),
                        ),
                      ],
                      rows: [
                        for (var i = 0;
                            i < data.statsData.turtahun!.length;
                            i++)
                          DataRow(
                            cells: [
                              DataCell(
                                Text(data.statsData.turtahun![i].label
                                    .toString()),
                              ),
                              DataCell(
                                Text(
                                    data.statsData.turtahun![i].val.toString()),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  //TurVAR
                  Center(
                    child: DataTable(
                      headingTextStyle: headerStyle,
                      dataTextStyle: txtDefault,
                      showBottomBorder: true,
                      border: TableBorder.all(color: Colors.white),
                      columns: const [
                        DataColumn(label: Text('TurVar')),
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Val of \nTurVar',
                              maxLines: 2,
                            ),
                          ),
                        ),
                      ],
                      rows: [
                        for (var i = 0; i < data.statsData.turvar!.length; i++)
                          DataRow(
                            cells: [
                              DataCell(
                                Text(
                                    data.statsData.turvar![i].label.toString()),
                              ),
                              DataCell(
                                Text(data.statsData.turvar![i].val.toString()),
                              ),
                            ],
                          ),
                      ],
                    ),
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
