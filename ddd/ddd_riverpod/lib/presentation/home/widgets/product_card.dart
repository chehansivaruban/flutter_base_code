import 'package:flutter/material.dart';

import '../../../domain/product/product.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.products,
    required this.index,
  });

  final List<Product> products;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Image.network(
                  products[index].imageUrl,
                  fit: BoxFit.fill,
                ),
                if (products[index].isDiscount)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      color: AppColors.primaryGreen,
                      child: Text(
                        '${products[index].discountPercentage}% OFF',
                        style: sanFranciscoRegular.copyWith(
                            color: AppColors.white, fontSize: 12),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              products[index].name,
              style: sanFranciscoBold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                if (products[index].isDiscount)
                  Text(
                    '\$${products[index].price}',
                    style: sanFranciscoRegular.copyWith(
                      color: AppColors.textGrey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                const SizedBox(width: 5),
                Text(
                  '\$${products[index].discountPrice}',
                  style: sanFranciscoBold.copyWith(
                    color: AppColors.primaryGreen,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
