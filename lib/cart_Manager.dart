import 'package:flutter/foundation.dart';

class CartManager extends ChangeNotifier {
  static final CartManager instance = CartManager._internal();
  final List<Map<String, dynamic>> _items = [];

  CartManager._internal();

  List<Map<String, dynamic>> get items => _items;

  void addToCart(Map<String, dynamic> product) {
    final index = _items.indexWhere((item) => item['name'] == product['name']);
    if (index >= 0) {
      _items[index]['quantity'] += 1;
    } else {
      _items.add({
        'name': product['name'],
        'price': product['price'],
        'image': product['image'],
        'quantity': 1,
      });
    }
    notifyListeners();
  }

  void increaseQuantity(int index) {
    _items[index]['quantity'] += 1;
    notifyListeners();
  }

  void decreaseQuantity(int index) {
    if (_items[index]['quantity'] > 1) {
      _items[index]['quantity'] -= 1;
    } else {
      _items.removeAt(index);
    }
    notifyListeners();
  }

  double get total {
    double sum = 0;
    for (var item in _items) {
      sum += item['price'] * item['quantity'];
    }
    return sum;
  }
}
