import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get all Infografis returns data', () async {
    Response response = await Dio().get(
        'https://webapi.bps.go.id/v1/api/list/model/infographic/domain/3274/key/841396623eaa7ad43906a4a64c96e7a1/');

    expect(response.statusCode == 200, true);
  });
}
