import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list_screen/features/products/domain/use_cases/get_products.dart';
import 'package:product_list_screen/features/products/presentation/cubit/products_states.dart';

@LazySingleton()
class ProductsCubit extends Cubit<ProductsState>{
  ProductsCubit (this._getProducts ):super (ProductsInitial());
  final GetProducts _getProducts;

  Future<void> getProducts() async{
    emit(GetProductsLoading());
    final result = await _getProducts();
    result.fold((failure) => emit(GetProductsError(failure.message)),
            (products) => emit(GetProductsSuccess(products)));
  }
}