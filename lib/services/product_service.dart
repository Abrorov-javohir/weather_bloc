import 'package:dio/dio.dart';
import 'package:weather_bloc/data/models/product.dart';

class ProductService {
  Future<List<Product>> getProducts() async {
    final _dio = Dio();

    try {
      final response = await _dio.get('https://fakestoreapi.com/products');
      List<dynamic> data = response.data;
      List<Product> products = data.map((e) => Product.fromMap(e)).toList();
      print(products);
      return products;
    } on DioException catch (e) {
      print('DioException: $e');
      rethrow;
    } catch (e) {
      print('Exception: $e');
      rethrow;
    }
  }
}
