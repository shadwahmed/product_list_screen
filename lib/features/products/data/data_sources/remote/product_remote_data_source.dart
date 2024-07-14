import 'package:product_list_screen/features/products/data/models/ProductResponse.dart';

abstract class ProductsRemoteDataSources {
  Future<ProductResponse> getProducts();
}
