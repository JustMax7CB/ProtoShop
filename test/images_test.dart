import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:protoshop/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.protoShop).existsSync(), isTrue);
    expect(File(Images.shirt).existsSync(), isTrue);
    expect(File(Images.successSignUpImg).existsSync(), isTrue);
    expect(File(Images.successTransactionImg).existsSync(), isTrue);
  });
}
