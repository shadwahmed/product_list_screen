import 'package:flutter_test/flutter_test.dart';
import 'package:product_list_screen/core/di/service_locator.dart';
import 'package:product_list_screen/features/products/data/repository/products_repository_impl.dart';
import 'package:product_list_screen/features/products/domain/entities/product.dart';

void main() {
  serviceLocator();
  test("Fetch Api", () async {
    var productsResponse =
        (await serviceLocator.get<ProductsRepositoryImpl>().getProducts(),);
    expect(productsResponse, List<Product>);
  });
}
