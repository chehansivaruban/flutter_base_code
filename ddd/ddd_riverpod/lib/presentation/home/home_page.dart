import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/values/style_constants.dart';
import '../core/values/text_styles.dart';
import 'widgets/featured_products.dart';
import 'widgets/home_header.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const HomeHeader(),
            Padding(
              padding: const EdgeInsets.all(AppPaddings.outerPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Featured',
                    style: sanFranciscoBold.copyWith(
                      fontSize: 25,
                    ),
                  ),
                  const FeaturedProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
