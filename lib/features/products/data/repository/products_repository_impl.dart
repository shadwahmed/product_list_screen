import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list_screen/core/error/exception.dart';
import 'package:product_list_screen/core/error/failure.dart';
import 'package:product_list_screen/features/products/data/data_sources/remote/product_remote_data_source.dart';
import 'package:product_list_screen/features/products/domain/entities/product.dart';
import 'package:product_list_screen/features/products/domain/repository/products_repository.dart';

@LazySingleton(as:ProductsRepository )
class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsRemoteDataSources _remoteDataSources;

  const ProductsRepositoryImpl(this._remoteDataSources);

  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      final productsResponse = await _remoteDataSources.getProducts();
      return Right(productsResponse.data);
    } on RemoteException catch (exception) {
      return Left(Failure(exception.message));
    }
  }
}
