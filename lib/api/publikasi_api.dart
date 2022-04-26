import 'package:cirebon_onstats/model/publikasi/publikasi_model.dart';
import 'package:dio/dio.dart';

class PublikasiAPI {
  //Fetch All From API
  Future<List<PublikasiModel>> fetchAllPublikasi() async {
    Response response = await Dio().get(
        'https://webapi.bps.go.id/v1/api/list/model/publication/domain/3274/key/841396623eaa7ad43906a4a64c96e7a1/');

    if (response.statusCode == 200) {
      List<PublikasiModel> publikasi = (response.data['data'][1] as List)
          .map((e) => PublikasiModel.fromJson(e))
          .toList();
      return publikasi;
    } else {
      throw Exception('Tidak Ada Publikasi.');
    }
  }

  Future<PublikasiModel> getPubDetail(String id) async {
    Response response = await Dio().get(
        'https://webapi.bps.go.id/v1/api/view/domain/3274/model/publication/lang/ind/id/$id/key/841396623eaa7ad43906a4a64c96e7a1/');
    return PublikasiModel.fromJson(response.data['data']);
  }
}
