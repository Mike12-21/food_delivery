import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  ValueNotifier<int> itemCount = ValueNotifier<int>(0);

  void addItem() {
    itemCount.value++;
    notifyListeners();
  }

  void removeItem() {
    if (itemCount.value > 0) {
      itemCount.value = 0;
      notifyListeners();
    }
  }
}
