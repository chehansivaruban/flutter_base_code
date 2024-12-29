import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/app_state/app_state_provider.dart';
import '../../routes/app_router.gr.dart';
import '../values/images.dart';

@RoutePage()
class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width - 100;

    final logoWidth = useState((width));

    useEffect(
      () {
        Future.delayed(Duration.zero, () {
          ref.read(appStateNotifierProvider.notifier).appStart();
        });

        Future.delayed(
          Duration.zero,
          () {
            logoWidth.value = width - (width);
          },
        );

        return;
      },
      const [],
    );
    final isLoading =
        ref.watch(appStateNotifierProvider.select((value) => value.isLoading));
    final isLoggedIn =
        ref.watch(appStateNotifierProvider.select((value) => value.loggedIn));

    useEffect(
      () {
        if (!isLoading) {
          Future.delayed(
            const Duration(seconds: 2),
            () {
              if (isLoggedIn) {
                context.router.replaceAll(
                  [
                    const NavBarRoute(),
                  ],
                );
              } else {
                context.router.replaceAll(
                  [
                    const LoginRoute(),
                  ],
                );
              }
            },
          );
        }

        return;
      },
      [isLoggedIn],
    );

    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: logoWidth.value,
          duration: const Duration(seconds: 4),
          curve: Curves.fastOutSlowIn,
          child: AppImages.logoImage,
        ),
      ),
    );
  }
}
