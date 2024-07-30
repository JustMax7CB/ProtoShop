import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:protoshop/resources/resources.dart';

void main() {
  test('svgs assets test', () {
    expect(File(Svgs.addToCartIcon).existsSync(), isTrue);
    expect(File(Svgs.addToFavoriteIcon).existsSync(), isTrue);
    expect(File(Svgs.clearInputIcon).existsSync(), isTrue);
    expect(File(Svgs.deleteIcon).existsSync(), isTrue);
    expect(File(Svgs.editIcon).existsSync(), isTrue);
    expect(File(Svgs.googleLogoIcon).existsSync(), isTrue);
    expect(File(Svgs.heartIcon).existsSync(), isTrue);
    expect(File(Svgs.heartIconSelected).existsSync(), isTrue);
    expect(File(Svgs.homeIcon).existsSync(), isTrue);
    expect(File(Svgs.homeIconSelected).existsSync(), isTrue);
    expect(File(Svgs.locationIcon).existsSync(), isTrue);
    expect(File(Svgs.logoutIcon).existsSync(), isTrue);
    expect(File(Svgs.menuButton).existsSync(), isTrue);
    expect(File(Svgs.passwordVisible).existsSync(), isTrue);
    expect(File(Svgs.search).existsSync(), isTrue);
    expect(File(Svgs.settingsIcon).existsSync(), isTrue);
    expect(File(Svgs.shoppingCart).existsSync(), isTrue);
    expect(File(Svgs.shoppingCartSelected).existsSync(), isTrue);
    expect(File(Svgs.userAvatar).existsSync(), isTrue);
    expect(File(Svgs.userIcon).existsSync(), isTrue);
    expect(File(Svgs.userIconSelected).existsSync(), isTrue);
  });
}
