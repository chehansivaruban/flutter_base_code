import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import '../../core/values/colors.dart';
import '../../core/values/images.dart';
import '../../core/values/style_constants.dart';
import '../../core/values/text_styles.dart';

class HomeHeader extends HookConsumerWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(0);
    final imgList = [
      'https://via.placeholder.com/400x150/ebeef1/ebeef1',
      'https://via.placeholder.com/400x150/ebeef1/ebeef1',
      'https://via.placeholder.com/400x150/ebeef1/ebeef1',
    ];

    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          const SizedBox(
            height: 150,
            width: double.infinity,
            child: AppImages.homeHeader,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPaddings.innerPadding),
                height: 40,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 8,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 5),
                          filled: true,
                          fillColor: AppColors.white,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: 'Search product',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite,
                              color: AppColors.white,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.shopping_cart,
                              color: AppColors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: CarouselSlider(
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      currentIndex.value = index;
                    },
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: imgList
                      .map((item) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                item,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPaddings.innerPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CarouselIndicator(
                      cornerRadius: 30,
                      height: 8,
                      width: 8,
                      activeColor: AppColors.primaryGreen,
                      count: imgList.length,
                      index: currentIndex.value,
                      color: AppColors.buttonGrey,
                    ),
                    Text(
                      "See more",
                      style: sanFranciscoRegular.copyWith(
                        color: AppColors.primaryGreen,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
