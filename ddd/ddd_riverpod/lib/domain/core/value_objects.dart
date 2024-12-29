import 'package:dartz/dartz.dart';

import 'core_value_validators.dart';
import 'i_value_object.dart';
import 'value_failure.dart';

class MobileNumber extends ValueObject<String> {
  factory MobileNumber(String input) {
    return MobileNumber._(validateMobileNumber(input));
  }

  const MobileNumber._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class OTP extends ValueObject<String> {
  factory OTP(String input) {
    return OTP._(validateOtp(input));
  }

  const OTP._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class Amount extends ValueObject<double> {
  factory Amount(String input) {
    return Amount._(
      validateAmountDouble(input),
    );
  }

  const Amount._(this.value);

  factory Amount.empty() {
    return Amount._(right(0));
  }

  factory Amount.value(double input) {
    return Amount._(right(input));
  }

  @override
  final Either<ValueFailure<double>, double> value;

  String toValueString({
    bool emptyFractions = false,
    bool crash = true,
    bool displayZero = true,
  }) {
    final val = crash ? getOrCrash() : getOrElse(() => 0);

    if (val == 0 && !displayZero) {
      return '';
    } else {
      return emptyFractions
          ? val.toStringAsFixed(2)
          : val.truncate() == val
              ? val.truncate().toString()
              : val.toStringAsFixed(2);
    }
  }
}

class Email extends ValueObject<String> {
  factory Email(String input) {
    return Email._(
      validateEmail(input),
    );
  }

  const Email._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
