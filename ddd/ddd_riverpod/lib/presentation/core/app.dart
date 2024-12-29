import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../routes/app_router.dart';
import 'values/theme.dart';

class App extends HookConsumerWidget {
  const App({super.key});
  static final appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ScreenUtilInit(
          designSize: const Size(
            360,
            690,
          ),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
              routerConfig: appRouter.config(),
              title: 'xyz',
              debugShowCheckedModeBanner: false,
              theme: theme,
            );
          }),
    );
  }
}
