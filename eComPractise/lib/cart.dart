import 'package:test/item.dart';
import 'package:test/product.dart';

class Cart {
  //to add product in cart, we have 2 cases now
  //  (1) product not added in cart so, quantity = 1
  //  (2) product already in cart so, update quatity + 1
  final Map<int, Item> _item = {};

  void addToCart(Product product) {
    final item = _item[product.id];
    if (item == null) {
      _item[product.id] = Item(product: product, quantity: 1);
    } else {
      _item[product.id] = Item(product: product, quantity: item.quantity + 1);
    }
  }

  double totalPrice() {
    return _item.values
        .map((item) => item.price)
        .reduce((value, element) => value + element);
  }

  @override
  String toString() {
    if (_item.isEmpty) {
      'Cart is empty';
    }
    final itemList = _item.values.map((item) => item.toString()).join('\n');
    return '------\n$itemList\n Total : ${totalPrice()}\n------';
  }
}
