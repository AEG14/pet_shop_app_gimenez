import 'package:flutter/material.dart';
import '../consts.dart';

class CartProvider extends ChangeNotifier {
  final List<Pet> _items = [];

  List<Pet> get items => _items;

  void add(Pet item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Pet item) {
    _items.remove(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }

  double getCartTotal() {
    return _items.fold(0, (previousValue, item) => previousValue + item.price);
  }
}
