import 'package:cirebon_onstats/api/brs_api.dart';
import 'package:cirebon_onstats/model/brs/brs_model.dart';
import 'package:flutter/material.dart';

class BRSViewModel with ChangeNotifier {
  List<BRSModel> _brs = [];
  List<BRSModel> get brs => _brs;

  late BRSModel brsDetail;

  Future<List<BRSModel>> getAllBRS(int page) async {
    final brsData = await BRSAPI().fetchAllBRS(page);
    _brs = brsData;
    notifyListeners();
    return brs;
  }

  Future<BRSModel?> getBRSDetail(int id) async {
    brsDetail = await BRSAPI().getBRSDetail(id);
    notifyListeners();
    return brsDetail;
  }
}
