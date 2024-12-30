import 'package:auto_route/auto_route.dart';
import '../views/screens/home/home_screen.dart';
import '../views/screens/cart/cart_screen.dart';
import '../views/screens/product/product_detail_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          path: '/',
        ),
        AutoRoute(
          page: CartRoute.page,
          path: '/cart',
        ),
        AutoRoute(
          page: ProductDetailRoute.page,
          path: '/product-detail',
        ),
      ];
}
