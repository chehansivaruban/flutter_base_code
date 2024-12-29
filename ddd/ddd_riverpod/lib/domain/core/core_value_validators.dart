import 'package:dartz/dartz.dart';

import 'core_value_failure.dart';
import 'value_failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.core(CoreValueFailure.empty(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateMobileNumber(String input) {
  final RegExp numberRegExp = RegExp(r'^\d+$');

  if (input.isNotEmpty &&
      numberRegExp.hasMatch(input) &&
      (input[0] == '0' ? input.length == 10 : input.length == 9)) {
    return right(input);
  } else {
    return left(
      ValueFailure.core(CoreValueFailure.invalidMobile(failedValue: input)),
    );
  }
}

Either<ValueFailure<String>, String> validateOtp(String input) {
  final RegExp numberRegExp = RegExp(r'^\d+$');

  if (input.isNotEmpty && numberRegExp.hasMatch(input) && input.length == 5) {
    return right(input);
  } else {
    return left(
      ValueFailure.core(CoreValueFailure.invalidOTP(failedValue: input)),
    );
  }
}

Either<ValueFailure<double>, double> validateAmountDouble(String input) {
  final RegExp numberRegExp = RegExp(r'^\d+(\.\d{0,2})?$');

  if (input.isNotEmpty && numberRegExp.hasMatch(input)) {
    try {
      return right(double.parse(input));
    } catch (e) {
      return left(
        ValueFailure.core(CoreValueFailure.invalidAmount(failedValue: input)),
      );
    }
  } else {
    return left(
      ValueFailure.core(CoreValueFailure.invalidAmount(failedValue: input)),
    );
  }
}

Either<ValueFailure<int>, int> validateAmountInt(String input) {
  final RegExp numberRegExp = RegExp(r'^\d+$');

  if (input.isNotEmpty && numberRegExp.hasMatch(input)) {
    try {
      return right(int.parse(input));
    } catch (e) {
      return left(
        ValueFailure.core(CoreValueFailure.invalidAmount(failedValue: input)),
      );
    }
  } else {
    return left(
      ValueFailure.core(CoreValueFailure.invalidAmount(failedValue: input)),
    );
  }
}

Either<ValueFailure<String>, String> validateEmail(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input) || input.isEmpty) {
    return right(input);
  } else {
    return left(
      ValueFailure.core(CoreValueFailure.invalidEmail(failedValue: input)),
    );
  }
}
