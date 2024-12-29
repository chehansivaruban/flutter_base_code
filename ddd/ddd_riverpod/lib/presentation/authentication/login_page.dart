import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/values/colors.dart';
import '../core/values/images.dart';
import '../core/values/style_constants.dart';
import '../core/values/text_styles.dart';
import 'widgets/login_form.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          AppPaddings.innerPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 36.sp,
            ),
            SizedBox(
              height: 100.sp,
              width: 100.sp,
              child: AppImages.logoImage,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Welcome to Eridanus',
              style: sanFranciscoRegular.copyWith(
                fontSize: 25,
                color: AppColors.primaryGreen,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Login to continue shopping',
              style: sanFranciscoRegular.copyWith(
                fontSize: 15,
                color: AppColors.textGrey,
              ),
            ),
            const SizedBox(height: 32),
            const LoginForm(),
            const SizedBox(height: 28),
            const SizedBox(height: 120),
            Center(
              child: Text(
                'Don\'t have an account?',
                style: sanFranciscoRegular.copyWith(
                  fontSize: 15,
                  color: AppColors.textGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
