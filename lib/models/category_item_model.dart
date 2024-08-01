import 'package:protoshop/models/item_model.dart';

class CategoryItemModel extends ItemModel {
  CategoryItemModel({required super.name, required super.imageUrl});

  @override
  String toString() {
    return "CategoryItem: [Name: $name, ImageUrl: $imageUrl]";
  }
}
