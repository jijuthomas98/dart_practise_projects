class Product {
  const Product({required this.name, required this.id, required this.price});
  final String name;
  final int id;
  final double price;

  String get initial => name.substring(0, 1);
  String get displayName => '($initial)${name.substring(1)} : INR $price';
}
