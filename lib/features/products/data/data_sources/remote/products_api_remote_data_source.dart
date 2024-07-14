import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list_screen/core/constants.dart';
import 'package:product_list_screen/core/error/exception.dart';
import 'package:product_list_screen/features/products/data/data_sources/remote/product_remote_data_source.dart';
import 'package:product_list_screen/features/products/data/models/ProductResponse.dart';

@LazySingleton(as: ProductsRemoteDataSources)
class ProductsApiRemoteDataSource implements ProductsRemoteDataSources {
  final Dio _dio;

  ProductsApiRemoteDataSource(this._dio);

  @override
  Future<ProductResponse> getProducts() async {
    try {
      final response = await _dio.get(APIConstants.productsEndpoint);
      return ProductResponse.fromJson(response.data);
    } catch (_) {
      throw const RemoteException("Failed to get products");
    }
  }
}
