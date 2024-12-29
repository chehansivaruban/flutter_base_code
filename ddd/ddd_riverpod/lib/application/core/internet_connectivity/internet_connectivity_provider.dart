import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../infrastructure/core/providers.dart';
import 'internet_connectivity_notifier.dart';
import 'internet_connectivity_state.dart';

final internetConnectivityNotifierProvider = StateNotifierProvider<
    InternetConnectivityNotifier, InternetConnectivityState>((ref) {
  final internetConnectivity = ref.watch(internetConnectivityProvider);

  return InternetConnectivityNotifier(internetConnectivity);
});
