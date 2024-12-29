import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/app_state/app_state_provider.dart';
import '../core/values/colors.dart';
import '../core/values/style_constants.dart';
import '../core/values/text_styles.dart';
import '../routes/app_router.gr.dart';
import 'widgets/more_header.dart';

@RoutePage()
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          const MoreHeader(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPaddings.outerPadding),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      color: Colors.black,
                      Icons.account_circle,
                      size: 20,
                    ),
                    title: Text(
                      'My Profile',
                      style: sanFranciscoMedium.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.textDarkerGrey,
                      size: 15,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      color: Colors.black,
                      Icons.card_giftcard,
                      size: 20,
                    ),
                    title: Text(
                      'Billing & Payments',
                      style: sanFranciscoMedium.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.textDarkerGrey,
                      size: 15,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      color: Colors.black,
                      Icons.bar_chart,
                      size: 20,
                    ),
                    title: Text(
                      'Reports',
                      style: sanFranciscoMedium.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.textDarkerGrey,
                      size: 15,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      color: Colors.black,
                      Icons.privacy_tip,
                      size: 20,
                    ),
                    title: Text(
                      'Privacy Policy',
                      style: sanFranciscoMedium.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.textDarkerGrey,
                      size: 15,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      color: Colors.black,
                      Icons.help,
                      size: 20,
                    ),
                    title: Text(
                      'Help & Support',
                      style: sanFranciscoMedium.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.textDarkerGrey,
                      size: 15,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      ref.read(appStateNotifierProvider.notifier).logout();
                      context.router.replaceAll(
                        [
                          const LoginRoute(),
                        ],
                      );
                    },
                    leading: const Icon(
                      color: Colors.black,
                      Icons.logout,
                      size: 20,
                    ),
                    title: Text(
                      'Log Out',
                      style: sanFranciscoMedium.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.textDarkerGrey,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
