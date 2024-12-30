import '../core/services/api/api_helper.dart';
import '../models/product_model.dart';
import '../utils/app_constants.dart';

class ProductRepository {
  final ApiHelper _apiHelper;

  ProductRepository({required ApiHelper apiHelper}) : _apiHelper = apiHelper;

  Future<List<Product>> getProducts() async {
    try {
      final response = await _apiHelper.request(
        method: HttpMethod.get,
        path: AppConstants.productsEndpoint,
      );

      if (response.isSuccess) {
        final List<dynamic> data = response.data;
        return data.map((json) => Product.fromJson(json)).toList();
      } else {
        throw Exception(response.error ?? 'Failed to load products');
      }
    } catch (e) {
      rethrow;
    }
  }
}
