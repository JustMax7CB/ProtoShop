import 'package:protoshop/models/product_item_model.dart';

class ShoppingCart {
  final List<ProductItemModel> products;
  final double totalPrice;

  ShoppingCart({this.products = const [], this.totalPrice = 0});

  ShoppingCart copyWith(List<ProductItemModel>? products) {
    return ShoppingCart(
        products: products ?? this.products,
        totalPrice: products != null
            ? products.fold(0.0, (sum, item) => sum + item.price)
            : totalPrice);
  }

  ShoppingCart addItem(ProductItemModel item) {
    return copyWith([...products, item]);
  }

  ShoppingCart removeItem(String itemNameToRemove) {
    return copyWith(
        products.where((item) => item.name != itemNameToRemove).toList());
  }

  int get quantity => products.length;
}
