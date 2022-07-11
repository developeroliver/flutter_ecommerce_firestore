import 'package:flutter/material.dart';
import '../models/product.dart';

class BagViewProvider extends ChangeNotifier{
  final List<Product> productsBag;
  BagViewProvider() : productsBag = [];

  // add a product
  void addProduct(Product product){
    productsBag.add(product);
    notifyListeners();
  }

  // remove a product
  void removeProduct(Product product){
    productsBag.remove(product);
    notifyListeners();
  }

  // clear the bag
  void clearBag(){
    productsBag.clear();
    notifyListeners();
  }

  // getters
  // length of the bag
  int get totalProducts => productsBag.length;
  // total price of the bag
  double get totalPrice => productsBag.fold(0, (total, product) => total + product.price);
  // bag is empty
  bool get isBagEmpty => productsBag.isEmpty;
}