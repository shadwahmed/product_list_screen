import 'package:dartz/dartz.dart';
import 'package:product_list_screen/core/error/failure.dart';
import 'package:product_list_screen/features/products/domain/entities/product.dart';

abstract class ProductsRepository {
  Future<Either<Failure,List<Product>>> getProducts();
}
