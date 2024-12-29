import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/product/product.dart';
import 'product_card.dart';

class FeaturedProducts extends ConsumerWidget {
  const FeaturedProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Product> products = [];

    for (int i = 1; i <= 20; i++) {
      products.add(Product(
        name: 'Anggurku Fresh Indonesia Grapes $i',
        price: 100.0 + i, // incrementing price slightly for variety
        imageUrl: 'https://via.placeholder.com/400x450/ebeef1/ebeef1',
        isDiscount: i % 3 == 0, // alternating discount status
        discountPrice:
            90.0 + i, // incrementing discount price slightly for variety
        discountPercentage:
            10 + (i % 5), // varying discount percentage slightly
      ));
    }

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.61,
      ),
      itemBuilder: (context, index) {
        return ProductCard(products: products, index: index);
      },
    );
  }
}
