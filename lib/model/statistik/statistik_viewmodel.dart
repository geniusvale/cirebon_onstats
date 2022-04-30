import 'package:cirebon_onstats/api/statistik_api.dart';
import 'package:cirebon_onstats/model/statistik/statistik_model.dart';
import 'package:flutter/material.dart';

class StatistikViewModel with ChangeNotifier {
  List<Subject> _subject = [];
  List<Subject> get subject => _subject;

  Future<List<Subject>> getAllSubject(int subCatId) async {
    final subject = await StatistikAPI().fecthAllSubject(subCatId);
    _subject = subject;
    notifyListeners();
    return subject;
  }
}
