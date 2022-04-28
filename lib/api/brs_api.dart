import 'package:cirebon_onstats/model/brs/brs_model.dart';
import 'package:dio/dio.dart';

class BRSAPI {
  //Fetch All From API
  Future<List<BRSModel>> fetchAllBRS(int page) async {
    Response response = await Dio().get(
        'https://webapi.bps.go.id/v1/api/list/model/pressrelease/domain/3274/page/$page/key/841396623eaa7ad43906a4a64c96e7a1/');

    if (response.statusCode == 200) {
      List<BRSModel> brs = (response.data['data'][1] as List)
          .map((e) => BRSModel.fromJson(e))
          .toList();
      return brs;
    } else {
      throw Exception('Tidak Ada BRS.');
    }
  }

  Future<BRSModel> getBRSDetail(int id) async {
    Response response = await Dio().get(
        'https://webapi.bps.go.id/v1/api/view/domain/3274/model/pressrelease/lang/ind/id/$id/key/841396623eaa7ad43906a4a64c96e7a1/');
    return BRSModel.fromJson(response.data['data']);
  }
}
