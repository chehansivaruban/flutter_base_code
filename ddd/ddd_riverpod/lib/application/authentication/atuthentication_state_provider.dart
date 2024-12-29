import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../infrastructure/authentication/providers.dart';
import '../app_state/app_state_provider.dart';
import 'authentication_notifier.dart';
import 'authentication_state.dart';

final authenticationNotifierProvider =
    StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState>(
        (ref) {
  final authenticationRepository = ref.watch(authenticationRepositoryProvider);
  final appStateNotifier = ref.watch(appStateNotifierProvider.notifier);
  return AuthenticationStateNotifier(
    authenticationRepository,
    appStateNotifier,
  );
});
