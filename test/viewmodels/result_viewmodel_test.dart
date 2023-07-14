import 'package:flutter_test/flutter_test.dart';
import 'package:edtech_mobile/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ResultViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
