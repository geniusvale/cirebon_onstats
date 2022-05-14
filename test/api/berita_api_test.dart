import 'package:cirebon_onstats/api/berita_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get all berita returns data', () async {
    var berita = await BeritaAPI().fetchAllBerita();
    expect(berita.isNotEmpty, true);
  });
}
