import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String name,
    required double price,
    required String imageUrl,
    required bool isDiscount,
    required double discountPrice,
    required int discountPercentage,
  }) = _Product;

  factory Product.empty() => const Product(
        name: '',
        price: 0.0,
        imageUrl: '',
        isDiscount: false,
        discountPrice: 0.0,
        discountPercentage: 0,
      );
}
