import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list_screen/core/error/failure.dart';
import 'package:product_list_screen/features/products/domain/entities/product.dart';
import 'package:product_list_screen/features/products/domain/repository/products_repository.dart';

@LazySingleton()
class GetProducts {
  final ProductsRepository _repository;
  const GetProducts(this._repository);

  Future<Either<Failure, List<Product>>> call() => _repository.getProducts();
}
