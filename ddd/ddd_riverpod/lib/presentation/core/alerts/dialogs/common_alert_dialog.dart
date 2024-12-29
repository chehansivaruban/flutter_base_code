import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../values/colors.dart';
import '../constants.dart';

class CommonAlertDialog extends ConsumerWidget {
  const CommonAlertDialog({
    super.key,
    this.title,
    required this.description,
    required this.actionButtonLabel,
    required this.actionButtonCallback,
    required this.alertType,
    this.cancelButtonLabel,
    this.cancelButtonCallback,
    this.imageWidget,
    this.isHtml = false,
    this.titleFirst = false,
    this.textAlign,
    this.buttonHeight,
  });

  final VoidCallback actionButtonCallback;
  final String actionButtonLabel;
  final String alertType;
  final VoidCallback? cancelButtonCallback;
  final String? cancelButtonLabel;
  final String description;
  final Widget? imageWidget;
  final bool isHtml;
  final String? title;
  final bool titleFirst;
  final TextAlign? textAlign;
  final double? buttonHeight;

  Widget _buildIcon() {
    switch (alertType) {
      case AlertType.info:
        return const Icon(
          Icons.info,
          color: AppColors.primaryRed,
          size: 50,
        );
      case AlertType.error:
        return const Icon(
          Icons.error,
          color: AppColors.primaryRed,
          size: 50,
        );
      case AlertType.email:
        return const Icon(
          Icons.email,
          color: AppColors.primaryRed,
          size: 50,
        );
      case AlertType.success:
        return const Icon(
          Icons.check_circle,
          color: AppColors.primaryRed,
          size: 50,
        );
      case AlertType.warning:
        return const Icon(
          Icons.warning,
          color: AppColors.primaryRed,
          size: 50,
        );
      case AlertType.facebook:
        return const Icon(
          Icons.facebook,
          color: AppColors.primaryRed,
          size: 50,
        );
      case AlertType.custom:
        return imageWidget!;
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 20,
                  offset: const Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Material(
                color: AppColors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        if (!titleFirst)
                          SizedBox(
                            child: _buildIcon(),
                          ),
                        if (title != null) ...[
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            title ?? '',
                            textAlign: TextAlign.center,
                            // style: ref
                            //     .read(textStyleProvider(true))
                            //     .bold20
                            //     .copyWith(
                            //       color: AppColors.black,
                            //     ),
                          ),
                        ],
                        if (titleFirst) ...[
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            child: _buildIcon(),
                          ),
                        ],
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 17,
                            right: 17,
                          ),
                          child: Text(
                            description,
                            textAlign: TextAlign.center,
                            // style: ref
                            //     .read(textStyleProvider(true))
                            //     .normal16
                            //     .copyWith(
                            //       color: AppColors.darkSecondaryGrey,
                            //     ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (cancelButtonCallback != null) ...[
                          // Expanded(
                          //   child: ButtonWithBorder(
                          //     label: cancelButtonLabel ?? '',
                          //     labelColor: AppColors.secondaryGrey,
                          //     backgroundColor: AppColors.white,
                          //     borderColor: AppColors.tertiaryGrey,
                          //     onPressed: cancelButtonCallback,
                          //     textAlign: textAlign,
                          //     buttonHeight: buttonHeight,
                          //   ),
                          // ),
                          const SizedBox(
                            width: 13,
                          ),
                        ],
                        // Expanded(
                        //   child: ButtonWithBorder(
                        //     label: actionButtonLabel,
                        //     labelColor: AppColors.white,
                        //     backgroundColor: AppColors.primaryRed,
                        //     borderColor: AppColors.primaryRed,
                        //     onPressed: actionButtonCallback,
                        //     textAlign: textAlign,
                        //     buttonHeight: buttonHeight,
                        //   ),
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
