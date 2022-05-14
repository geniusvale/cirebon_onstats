import 'package:cirebon_onstats/api/brs_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get all BRS returns data', () async {
    var brs = await BRSAPI().fetchAllBRS(1);
    expect(brs.isNotEmpty, true);
  });
}
