import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'failure_notifier.dart';
import 'failure_state.dart';

final failureNotifierProvider =
    StateNotifierProvider.autoDispose<FailureStateNotifier, FailureState>(
  (ref) {
    return FailureStateNotifier();
  },
);
