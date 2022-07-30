import 'package:cirebon_onstats/api/statistik_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get all Stats Subject returns data', () async {
    var stats = await StatistikAPI().fecthAllSubject(1);
    expect(stats.isNotEmpty, true);
  });
}
