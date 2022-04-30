import 'package:cirebon_onstats/model/statistik/statistik_model.dart';
import 'package:dio/dio.dart';

class StatistikAPI {

  //Fetch List Variable from Subject
  Future<List<Subject>> fecthAllSubject(int subCatId) async {
    Response response = await Dio().get(
        'https://webapi.bps.go.id/v1/api/list/model/subject/domain/3274/subcat/$subCatId/key/841396623eaa7ad43906a4a64c96e7a1/');

    if (response.statusCode == 200) {
      List<Subject> listSubject = (response.data['data'][1] as List)
          .map((e) => Subject.fromJson(e))
          .toList();
      return listSubject;
    } else {
      throw Exception('');
    }
  }

}
