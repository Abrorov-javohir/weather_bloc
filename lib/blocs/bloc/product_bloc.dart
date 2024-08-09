import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_bloc/data/models/product.dart';
import 'package:weather_bloc/services/product_service.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductSucces(products: [], status: Status.pure)) {
    on<ProductEvent>((event, emit) async {
      emit((state as ProductSucces)
          .copyWith(status: Status.loading)); // Update state to loading
      try {
        List<Product> products = await ProductService().getProducts();
        if (products.isNotEmpty) {
          emit((state as ProductSucces).copyWith(
              products: products,
              status: Status.success)); // Emit success state
        } else {
          emit((state as ProductSucces).copyWith(status: Status.fail));
        }
      } catch (e) {
        emit(ProductError()); // Emit error state on error
      }
    });
  }
}
