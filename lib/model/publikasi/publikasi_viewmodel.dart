import 'package:cirebon_onstats/api/brs_api.dart';
import 'package:cirebon_onstats/api/publikasi_api.dart';
import 'package:cirebon_onstats/model/brs/brs_model.dart';
import 'package:cirebon_onstats/model/publikasi/publikasi_model.dart';
import 'package:flutter/material.dart';

class PublikasiViewModel with ChangeNotifier {
  List<PublikasiModel> _publikasi = [];
  List<PublikasiModel> get publikasi => _publikasi;

  Future getAllPublikasi() async {
    final publikasiData = await PublikasiAPI().fetchAllPublikasi();
    _publikasi = publikasiData;
    notifyListeners();
  }
}
