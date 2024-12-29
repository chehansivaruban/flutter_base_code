import '../config.dart';
import '../domain/core/failure.dart';
import '../domain/core/value_failure.dart';

extension ValueFailureX on ValueFailure {
  String toErrorString() {
    return when(
      core: (core) => core.when(
        empty: (_) => "generalEmptyFields",
        invalidAmount: (_) => "popupTextPaymentAmountError",
        invalidMobile: (_) => " generalInvalidNumbe",
        invalidOTP: (_) => "popupTextloginvalidOtp",
        invalidEmail: (_) => "generalInvalidEmail",
      ),
    );
  }
}

extension FailureX on Failure {
  String toErrorString() {
    return when(
      core: (coreFailure) => coreFailure.when(
        serverError: (message) => message,
        permissionDenied: () => 'permissionDenied',
        unexpected: () =>
            Config.isDebugMode ? 'Unexpected Error' : 'messagesTimeout',
        invalidMobileNumber: () => ' popupTextloginInvalidMobile',
        somethingWentWrong: (e) =>
            Config.isDebugMode ? e.toString() : 'messagesTimeout',
        ignoreWarning: () => '',
        cannotLaunchURL: () =>
            Config.isDebugMode ? 'Cannot launch URL' : 'messagesTimeout',
      ),
      storage: (storageFailure) => storageFailure.when(
        notFound: () => 'dataNotFound',
        unableToUpdate: () => 'dataUnableToUpdate',
        unableToCreate: () => 'dataUnableToCreate',
        unableToDelete: () => 'dataUnableToDelete',
      ),
      network: (networkFailure) => networkFailure.when(
        timeout: () => 'messagesTimeout',
        noInternet: () => "sa",
      ),
      authentication: (failure) => 'generalAutoLogout',
    );
  }
}
