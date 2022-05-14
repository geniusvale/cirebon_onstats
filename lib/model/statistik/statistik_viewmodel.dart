import 'package:cirebon_onstats/api/statistik_api.dart';
import 'package:cirebon_onstats/model/statistik/statistik_model.dart';
import 'package:flutter/material.dart';

class StatistikViewModel with ChangeNotifier {
  List<Subject> _subject = [];
  List<Subject> get subject => _subject;

  List<Var> _listVariable = [];
  List<Var> get listVariable => _listVariable;

  late Data statsData;

  late var statsJson;

  Future<List<Subject>> getAllSubject(int subCatId) async {
    final subject = await StatistikAPI().fecthAllSubject(subCatId);
    _subject = subject;
    notifyListeners();
    return subject;
  }

  Future<List<Var>> getAllVariable(int subId) async {
    final listVariable = await StatistikAPI().fetchAllVariable(subId);
    _listVariable = listVariable;
    notifyListeners();
    return listVariable;
  }

  Future<Data> getStatsData(int varId) async {
    statsData = await StatistikAPI().fetchStatsData(varId);
    notifyListeners();
    return statsData;
  }
}
