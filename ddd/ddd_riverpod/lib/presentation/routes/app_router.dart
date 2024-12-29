import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: NavBarRoute.page,
          children: [
            AutoRoute(
              page: ChatRoute.page,
            ),
            AutoRoute(
              page: ExploreRoute.page,
            ),
            AutoRoute(
              page: ProfileRoute.page,
            ),
            AutoRoute(
              page: HomeRoute.page,
            ),
            AutoRoute(
              page: PurchasesRoute.page,
            ),
          ],
        ),
      ];
}
