import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import '../../../utils/failure_utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../application/app_state/app_state_provider.dart';
import '../../../application/authentication/atuthentication_state_provider.dart';
import '../../../application/core/failure/failure_provider.dart';
import '../../../domain/core/failure.dart';
import '../../core/alerts/alert_utils.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';
import '../../core/widgets/custom_textfield.dart';
import '../../routes/app_router.gr.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
        authenticationNotifierProvider.select((value) => value.isLoading));
    ref.listen<Option<Failure>>(
      authenticationNotifierProvider.select((value) => value.responseFailure),
      (_, failureOption) {
        failureOption.fold(
          () {},
          (failure) {
            ref.read(failureNotifierProvider.notifier).handleFailure(failure);
          },
        );
      },
    );
    ref.listen<Option<Failure>>(
      failureNotifierProvider.select((value) => value.latestFailure),
      (_, failureOption) {
        failureOption.fold(
          () {},
          (failure) {
            failure.maybeWhen(
              orElse: () {
                AlertUtils.showFailureDialog(
                  context: context,
                  failure: failure,
                  onDismiss: () {
                    ref
                        .read(failureNotifierProvider.notifier)
                        .dismissFailure(failure);
                  },
                );
              },
              authentication: (authFailure) {
                AlertUtils.showInfoDialog(
                  actionButtonLabel: "Back",
                  context: context,
                  message: failure.toErrorString(),
                  onActionPressed: (contxt) {
                    ref.read(appStateNotifierProvider.notifier).logout();
                    contxt.router.replaceAll(
                      [
                        const SplashRoute(),
                      ],
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username/Email',
          style: sanFranciscoRegular.copyWith(
            fontSize: 15,
            color: AppColors.textGrey,
          ),
        ),
        CustomTextField(
          hintText: 'Username',
          textInputType: TextInputType.emailAddress,
          onChanged: (value) {
            ref
                .read(authenticationNotifierProvider.notifier)
                .emailChanged(value);
          },
        ),
        const SizedBox(height: 20),
        Text(
          'Password',
          style: sanFranciscoRegular.copyWith(
            fontSize: 15,
            color: AppColors.textGrey,
          ),
        ),
        CustomTextField(
          hintText: 'password',
          obscureText: true,
          textInputType: TextInputType.text,
          isSuffix: true,
          suffixOnPress: () {},
          onChanged: (value) {
            ref
                .read(authenticationNotifierProvider.notifier)
                .passwordChanged(value);
          },
        ),
        const SizedBox(height: 20),
        Center(
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                ref.read(authenticationNotifierProvider.notifier).login();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              child: isLoading
                  ? CircularProgressIndicator(
                      backgroundColor: AppColors.darkestGreen,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Colors.white,
                      ),
                    )
                  : const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
