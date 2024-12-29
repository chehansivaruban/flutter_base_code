import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/providers.dart';
import 'authentication_repository.dart';

final authenticationRepositoryProvider =
    Provider<AuthenticationRepository>((ref) {
  final apiHelper = ref.watch(apiHelperProvider);
  return AuthenticationRepository(apiHelper);
});
