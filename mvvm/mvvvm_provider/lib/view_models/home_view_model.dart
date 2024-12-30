import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../repositories/product_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final ProductRepository _productRepository;
  List<Product> products = [];

  HomeViewModel({required ProductRepository productRepository})
      : _productRepository = productRepository;

  Future<void> fetchProducts() async {
    notifyListeners();
    try {
      products = await _productRepository.getProducts();
      notifyListeners();
    } catch (e) {
      print(e);
      notifyListeners();
    }
  }
}
