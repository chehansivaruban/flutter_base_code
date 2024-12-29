import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../infrastructure/core/providers.dart';
import 'app_state.dart';
import 'app_state_notifier.dart';

final appStateNotifierProvider =
    StateNotifierProvider<AppStateNotifier, AppState>((ref) {
  final localRepository = ref.watch(localRepositoryProvider);

  return AppStateNotifier(localRepository);
});
