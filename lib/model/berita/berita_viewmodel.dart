import 'package:cirebon_onstats/api/berita_api.dart';
import 'package:cirebon_onstats/model/berita/berita_model.dart';
import 'package:flutter/material.dart';

class BeritaViewModel with ChangeNotifier {
  List<BeritaModel> _berita = [];
  List<BeritaModel> get berita => _berita;

  Future getAllBerita() async {
    final beritaData = await BeritaAPI().fetchAllBerita();
    _berita = beritaData;
    notifyListeners();
  }
}
