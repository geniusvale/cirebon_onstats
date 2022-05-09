import 'package:cirebon_onstats/model/infografis/infografis_model.dart';
import 'package:dio/dio.dart';

class InfografisAPI {
  //Fetch All From API
  Future<List<InfografisModel>> fetchAllInfografis() async {
    Response response = await Dio().get(
        'https://webapi.bps.go.id/v1/api/list/model/infographic/domain/3274/key/841396623eaa7ad43906a4a64c96e7a1/');

    if (response.statusCode == 200) {
      List<InfografisModel> infografis = (response.data['data'][1] as List)
          .map((e) => InfografisModel.fromJson(e))
          .toList();
      return infografis;
    } else {
      throw Exception('Tidak Ada Data.');
    }
  }
}
