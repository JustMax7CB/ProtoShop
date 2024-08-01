import 'package:flutter/material.dart';
import 'package:protoshop/presentation/components/base_page.dart';
import 'package:protoshop/presentation/components/navbar.dart';
import 'package:protoshop/resources/resources.dart';
import 'package:protoshop/theme/text_styles.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.14,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: titleStyle,
            ),
            sortDropdown()
          ],
        ),
      ),
      bottomNavBar: const MyNavbar(),
      body: GridView(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 2,mainAxisSpacing: 50),
        children: [
          itemContainer("Shirt", 12.5),
          itemContainer("Shirt", 12.5),
          itemContainer("Shirt", 12.5),
          itemContainer("Shirt", 12.5),
          itemContainer("Shirt", 12.5),
          itemContainer("Shirt", 12.5),
        ],
      ),
    );
  }
}

Widget sortDropdown() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      const Text(
        'Sort By:',
        style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      const SizedBox(width: 8),
      Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: 'Price',
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
              fontFamily: "Poppins",
              color: Colors.black,
              fontSize: 14,
            ),
            onChanged: (String? newValue) {
              // Handle dropdown value change
            },
            items: <String>['Price', 'Name', 'Rating']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    ],
  );
}

Widget itemContainer(String name, double price) {
  return SizedBox(
    height: 200,
    width: 180,
    child: Column(
      children: [
        Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  width: 0.6, color: const Color.fromRGBO(0, 0, 0, 0.45)),
            ),
            child: Image.asset(Images.shirt,height: 120,width: 120,)),
        Text(name, style: TextStyle(fontFamily: "Poppins"),),
        Text("$price\$", style: TextStyle(fontFamily: "Poppins"))
      ],
    ),
  );
}
