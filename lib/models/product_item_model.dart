import 'package:protoshop/models/item_model.dart';

class ProductItemModel extends ItemModel {
  final double price;
  final String description;

  ProductItemModel({
    required super.name,
    required this.description,
    required super.imageUrl,
    required this.price,
  });

  @override
  String toString() {
    return "ProductItemModel: [Name: $name, Description: $description, Price: $price, ImageUrl: $imageUrl]";
  }
}
