import 'package:flutter_test/flutter_test.dart';
import 'package:rick_and_morty/src/providers/search_provider.dart';

void main() {
  test('if true returns "human"', () {
    expect(isHuman(true), equals('human'));
  });
  test('if false returns null', () {
    expect(isHuman(false), isNull);
  });
}
