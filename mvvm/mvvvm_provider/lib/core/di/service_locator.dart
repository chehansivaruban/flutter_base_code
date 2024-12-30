import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/api/api_helper.dart';
import '../../repositories/product_repository.dart';
import '../../view_models/home_view_model.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => ApiHelper(dio: sl()));

  // Repositories
  sl.registerLazySingleton(
    () => ProductRepository(apiHelper: sl()),
  );

  // ViewModels
  sl.registerFactory(
    () => HomeViewModel(productRepository: sl()),
  );

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
