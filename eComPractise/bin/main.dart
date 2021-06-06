import 'dart:io';

import 'package:test/cart.dart';
import 'package:test/product.dart';

const allProducts = [
  Product(id: 1, name: 'apple', price: 90.0),
  Product(id: 2, name: 'banana', price: 60.0),
  Product(id: 3, name: 'mango', price: 100.0),
  Product(id: 4, name: 'pineapple', price: 70.0),
  Product(id: 5, name: 'orange', price: 50.0),
];
void main() {
  final cart = Cart();
  while (true) {
    stdout.write(
        'what do you want to do? (a)dd to cart, (v)iew cart ,(c)heckout or (q)uit: ');
    final userResponse = stdin.readLineSync();
    if (userResponse == 'a') {
      final product = chooseProduct();
      if (product != null) {
        cart.addToCart(product);
        print(cart);
      }
    } else if (userResponse == 'v') {
    } else if (userResponse == 'c') {
      if (checkout(cart)) {
        print('Thanks for shoping with us !!!!!');
        break;
      }
    } else if (userResponse == 'q') {
      print('Shopping ended !!!');
      break;
    }
  }
}

//function to choose products and display all products
Product? chooseProduct() {
  final productList =
      allProducts.map((product) => product.displayName).join('\n');
  stdout.write('Available products: \n$productList \n Your choice : ');
  final userChoice = stdin.readLineSync();
  for (var product in allProducts) {
    if (userChoice == product.initial) {
      return product;
    }
  }
  print('Product not found');
  return null;
}

bool checkout(Cart cart) {
  final total = cart.totalPrice();
  stdout.write('Total cart amount to checkout : $total \n');
  print('Pay in cash');
  final userInput = stdin.readLineSync();
  if (userInput == null) {
    return false;
  }
  final userCash = double.tryParse(userInput);
  if (userCash != null) {
    final balance = total - userCash;
    stdout.write('Change : $balance');
    return true;
  }
  print('insufient cash');
  return false;
}
