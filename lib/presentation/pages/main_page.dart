import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protoshop/models/category_item_model.dart';
import 'package:protoshop/presentation/components/base_page.dart';
import 'package:protoshop/presentation/components/input_field.dart';
import 'package:protoshop/presentation/components/navbar.dart';
import 'package:protoshop/resources/resources.dart';
import 'package:protoshop/resources/strings.dart';
import 'package:protoshop/theme/text_styles.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return BasePage(
        bottomNavBar: const MyNavbar(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                Svgs.menuButton,
                width: 30,
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: InputField(
                controller: controller,
                hintText: Strings.search,
                suffixIcon: SvgPicture.asset(
                  Svgs.search,
                  fit: BoxFit.scaleDown,
                ),
              ),
            )),
            InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, "/login");
              },
              child: SvgPicture.asset(
                Svgs.logoutIcon,
                width: 30,
              ),
            )
          ],
        ),
        body: body());
  }
}

Widget body() {
  return GridView(
    gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    children: [
      categoryContainer(),
      categoryContainer(),
      categoryContainer(),
      categoryContainer(),
      categoryContainer(),
      categoryContainer(),
      categoryContainer(),
      categoryContainer(),
      categoryContainer(),
      categoryContainer(),
      categoryContainer(),
    ],
  );
}

Widget categoryContainer() {
  final categories = [
    CategoryItemModel(name: "Shirt", imageUrl: Images.shirt),
    CategoryItemModel(name: "Shirt", imageUrl: Images.shirt),
    CategoryItemModel(name: "Shirt", imageUrl: Images.shirt),
    CategoryItemModel(name: "Shirt", imageUrl: Images.shirt),
  ];
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: categories
            .map((e) => Column(
                  children: [
                    Flexible(
                        child: Container(
                      padding: const EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          width: 0.6,
                          color: const Color.fromRGBO(0, 0, 0, 0.45),
                        ),
                      ),
                      child: Image.asset(e.imageUrl),
                    )),
                    Center(
                        child: Text(
                      e.name,
                      style: categoryTextStyle,
                    ))
                  ],
                ))
            .toList()),
  );
}
