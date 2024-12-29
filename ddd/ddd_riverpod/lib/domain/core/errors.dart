import 'value_failure.dart';

class UnexpectedValueError extends Error{
  UnexpectedValueError(this.valueFailure);

  final ValueFailure valueFailure;

  @override
  String toString() {
    const explanation = 'Encountered an unrecoverable value failure. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}