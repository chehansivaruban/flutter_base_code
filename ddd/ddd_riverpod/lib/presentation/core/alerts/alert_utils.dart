import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../domain/core/failure.dart';
import 'constants.dart';
import 'dialogs/common_alert_dialog.dart';

mixin AlertUtils {
  static void showErrorDialog({
    required BuildContext context,
    required String message,
    Function(BuildContext context)? onActionPressed,
    Function(BuildContext context)? onCancelActionPressed,
    String alertButtonType = AlertButtonType.ok,
    String actionButtonLabel = '',
    String cancelButtonLabel = '',
    bool isHtml = false,
    TextAlign? textAlign,
    String? title,
    double? buttonHeight,
  }) {
    _showAlertDialog(
      context: context,
      title: title,
      message: message,
      alertType: AlertType.error,
      onActionPressed: onActionPressed,
      actionButtonLabel: actionButtonLabel,
      cancelButtonLabel: cancelButtonLabel,
      alertButtonType: alertButtonType,
      isHtml: isHtml,
      onCancelActionPressed: onCancelActionPressed,
      textAlign: textAlign,
      buttonHeight: buttonHeight,
    );
  }

  static void showSuccessDialog({
    required BuildContext context,
    required String message,
    Function(BuildContext context)? onActionPressed,
    Function(BuildContext context)? onCancelActionPressed,
    String alertButtonType = AlertButtonType.ok,
    String actionButtonLabel = '',
    String cancelButtonLabel = '',
    bool isHtml = false,
    String? title,
  }) {
    _showAlertDialog(
      context: context,
      title: title,
      message: message,
      alertType: AlertType.success,
      onActionPressed: onActionPressed,
      actionButtonLabel: actionButtonLabel,
      cancelButtonLabel: cancelButtonLabel,
      alertButtonType: alertButtonType,
      isHtml: isHtml,
      onCancelActionPressed: onCancelActionPressed,
    );
  }

  static void showWarningDialog({
    required BuildContext context,
    required String message,
    Function(BuildContext context)? onActionPressed,
    Function(BuildContext context)? onCancelActionPressed,
    String alertButtonType = AlertButtonType.ok,
    String actionButtonLabel = '',
    String cancelButtonLabel = '',
    bool isHtml = false,
    String? title,
  }) {
    _showAlertDialog(
      context: context,
      title: title,
      message: message,
      alertType: AlertType.warning,
      onActionPressed: onActionPressed,
      actionButtonLabel: actionButtonLabel,
      cancelButtonLabel: cancelButtonLabel,
      alertButtonType: alertButtonType,
      isHtml: isHtml,
      onCancelActionPressed: onCancelActionPressed,
    );
  }

  static void showInfoDialog({
    required BuildContext context,
    required String message,
    Function(BuildContext context)? onActionPressed,
    Function(BuildContext context)? onCancelActionPressed,
    String alertButtonType = AlertButtonType.ok,
    String actionButtonLabel = '',
    String cancelButtonLabel = '',
    bool isHtml = false,
    String? title,
  }) {
    _showAlertDialog(
      context: context,
      title: title,
      message: message,
      alertType: AlertType.info,
      onActionPressed: onActionPressed,
      actionButtonLabel: actionButtonLabel,
      cancelButtonLabel: cancelButtonLabel,
      alertButtonType: alertButtonType,
      isHtml: isHtml,
      onCancelActionPressed: onCancelActionPressed,
    );
  }

  static void showConfirmDialog({
    required BuildContext context,
    required String message,
    Function(BuildContext context)? onActionPressed,
    Function(BuildContext context)? onCancelActionPressed,
    String alertButtonType = AlertButtonType.yesNo,
    String actionButtonLabel = '',
    String cancelButtonLabel = '',
    bool isHtml = false,
    String? title,
  }) {
    _showAlertDialog(
      context: context,
      title: title,
      message: message,
      alertType: AlertType.info,
      onActionPressed: onActionPressed,
      actionButtonLabel: actionButtonLabel,
      cancelButtonLabel: cancelButtonLabel,
      alertButtonType: alertButtonType,
      isHtml: isHtml,
      onCancelActionPressed: onCancelActionPressed,
    );
  }

  static void showEmailDialog({
    required BuildContext context,
    required String message,
    Function(BuildContext context)? onActionPressed,
    Function(BuildContext context)? onCancelActionPressed,
    String alertButtonType = AlertButtonType.ok,
    String actionButtonLabel = '',
    String cancelButtonLabel = '',
    bool isHtml = false,
  }) {
    _showAlertDialog(
      context: context,
      message: message,
      alertType: AlertType.email,
      onActionPressed: onActionPressed,
      actionButtonLabel: actionButtonLabel,
      cancelButtonLabel: cancelButtonLabel,
      alertButtonType: alertButtonType,
      isHtml: isHtml,
      onCancelActionPressed: onCancelActionPressed,
    );
  }

  static void showFailureDialog({
    required BuildContext context,
    required Failure failure,
    required VoidCallback onDismiss,
  }) {
    final message = failure.maybeWhen(
        core: (coreFailure) => coreFailure.maybeWhen(
              orElse: () => failure.toString(),
              serverError: (message) => message,
              ignoreWarning: () => '',
            ),
        orElse: () {});

    final String alertType = failure.maybeWhen(
      orElse: () => AlertType.error,
    );

    _showAlertDialog(
      context: context,
      message: message ?? "Common Error",
      alertType: alertType,
      cancelButtonLabel: "Back",
      onCancelActionPressed: (context) {
        onDismiss();
        context.router.maybePop();
      },
      actionButtonLabel: "Back",
      onActionPressed: (context) {
        onDismiss();
        context.router.maybePop();
      },
    );
  }

  static void _showAlertDialog({
    required BuildContext context,
    required String message,
    Function(BuildContext context)? onActionPressed,
    Function(BuildContext context)? onCancelActionPressed,
    required String alertType,
    String alertButtonType = AlertButtonType.ok,
    String actionButtonLabel = '',
    String cancelButtonLabel = '',
    String? title,
    bool isHtml = false,
    TextAlign? textAlign,
    double? buttonHeight,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return CommonAlertDialog(
          title: title,
          description: message,
          alertType: alertType,
          textAlign: textAlign,
          buttonHeight: buttonHeight,
          actionButtonCallback: onActionPressed != null
              ? () => onActionPressed(context)
              : () {
                  context.router.maybePop();
                },
          actionButtonLabel: actionButtonLabel.isNotEmpty
              ? actionButtonLabel
              : alertButtonType == AlertButtonType.yesNo
                  ? "context.l10n.generalButtonsBtnYes"
                  : "context.l10n.generalButtonsBtnOk",
          cancelButtonCallback: onCancelActionPressed != null
              ? () => onCancelActionPressed(context)
              : alertButtonType == AlertButtonType.ok
                  ? null
                  : () {
                      context.router.maybePop();
                    },
          cancelButtonLabel: cancelButtonLabel.isNotEmpty
              ? cancelButtonLabel
              : alertButtonType == AlertButtonType.yesNo
                  ? "context.l10n.generalButtonsBtnNo"
                  : "context.l10n.generalButtonsBtnCancel",
          isHtml: isHtml,
        );
      },
    );
  }
}
