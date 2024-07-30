import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protoshop/resources/resources.dart';
import 'package:protoshop/resources/strings.dart';
import 'package:protoshop/theme/colors.dart';
import 'package:protoshop/theme/text_styles.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key, required this.items});

  final List<BottomNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: navbarBgColor,
          border: Border.all(width: 0.2, color: Colors.black),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(color: navbarShadowColor, blurRadius: 5, spreadRadius: 1),
            const BoxShadow(
                color: Colors.white, blurRadius: 6, spreadRadius: 2),
          ]),
      height: 65,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: items,
        selectedItemColor: navbarItemActiveColor,
        unselectedItemColor: navbarItemInactiveColor,
        selectedLabelStyle: navbarActiveItemLabelStyle,
        unselectedLabelStyle: navbarInactiveItemLabelStyle,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        showUnselectedLabels: true,
      ),
    );
  }
}

class MyNavbar extends StatelessWidget {
  const MyNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomNavbar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(Svgs.homeIcon),
          label: Strings.home,
          activeIcon: SvgPicture.asset(Svgs.homeIconSelected),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(Svgs.shoppingCart),
          label: Strings.cart,
          activeIcon: SvgPicture.asset(Svgs.shoppingCartSelected),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(Svgs.heartIcon),
          label: Strings.favorites,
          activeIcon: SvgPicture.asset(Svgs.heartIconSelected),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(Svgs.userIcon),
          label: Strings.profile,
          activeIcon: SvgPicture.asset(Svgs.userIconSelected),
        ),
      ],
    );
  }
}
