abstract class ItemModel {
  final String name;
  final String imageUrl;

  ItemModel({required this.name, required this.imageUrl});

  @override
  String toString() {
    return "ItemModel: [Name: $name, ImageUrl: $imageUrl]";
  }
}
