import 'package:cirebon_onstats/api/publikasi_api.dart';
import 'package:cirebon_onstats/model/publikasi/publikasi_model.dart';
import 'package:flutter/material.dart';

class PublikasiViewModel with ChangeNotifier {
  List<PublikasiModel> _publikasi = [];
  List<PublikasiModel> get publikasi => _publikasi;

  late PublikasiModel pubDetail;

  Future<List<PublikasiModel>> getAllPublikasi(int page) async {
    final publikasiData = await PublikasiAPI().fetchAllPublikasi(page);
    _publikasi = publikasiData;
    notifyListeners();
    return publikasi;
  }

  Future<PublikasiModel?> getPubDetail(String id) async {
    pubDetail = await PublikasiAPI().getPubDetail(id);
    notifyListeners();
    return pubDetail;
  }
}
