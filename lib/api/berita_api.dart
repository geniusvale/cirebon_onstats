import 'package:cirebon_onstats/model/berita/berita_model.dart';
import 'package:dio/dio.dart';

class BeritaAPI {
  //Fetch All From API
  Future<List<BeritaModel>> fetchAllBerita() async {
    Response response = await Dio().get(
        'https://webapi.bps.go.id/v1/api/list/model/news/domain/3274/key/841396623eaa7ad43906a4a64c96e7a1/');

    if (response.statusCode == 200) {
      List<BeritaModel> berita = (response.data['data'][1] as List)
          .map((e) => BeritaModel.fromJson(e))
          .toList();
      return berita;
    } else {
      throw Exception('Tidak Ada Berita.');
    }
  }
}
