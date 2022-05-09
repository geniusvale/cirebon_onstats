import 'package:cirebon_onstats/api/berita_api.dart';
import 'package:cirebon_onstats/model/berita/berita_model.dart';
import 'package:flutter/material.dart';

class BeritaViewModel with ChangeNotifier {
  List<BeritaModel> _berita = [];
  List<BeritaModel> get berita => _berita;

  late BeritaModel beritaDetail;

  Future<List<BeritaModel>> getAllBerita() async {
    final beritaData = await BeritaAPI().fetchAllBerita();
    _berita = beritaData;
    notifyListeners();
    return berita;
  }

  Future<BeritaModel> getBeritaDetail(int id) async {
    beritaDetail = await BeritaAPI().getBeritaDetail(id);
    notifyListeners();
    return beritaDetail;
  }
}
