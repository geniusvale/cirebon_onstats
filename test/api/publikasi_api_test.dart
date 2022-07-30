import 'package:cirebon_onstats/api/publikasi_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get all Publikasi returns data', () async {
    var pub = await PublikasiAPI().fetchAllPublikasi(1);
    expect(pub.isNotEmpty, true);
  });
}
