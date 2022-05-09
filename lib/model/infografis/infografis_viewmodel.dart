import 'package:cirebon_onstats/api/infografis_api.dart';
import 'package:cirebon_onstats/model/infografis/infografis_model.dart';
import 'package:flutter/material.dart';

class InfografisViewModel with ChangeNotifier {
  List<InfografisModel> _infografis = [];
  List<InfografisModel> get infografis => _infografis;

  Future<List<InfografisModel>> getAllInfografis() async {
    final infografisData = await InfografisAPI().fetchAllInfografis();
    _infografis = infografisData;
    notifyListeners();
    return infografis;
  }
}
