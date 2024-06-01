import 'package:bloc/bloc.dart';
import 'package:commercejs_project/application/data/models/product_model.dart';
import 'package:commercejs_project/application/data/services/product_service.dart';
import 'package:equatable/equatable.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<LoadProducts>(_loadProductsHandler);
  }

  Future<void> _loadProductsHandler( event, emit) async {
    emit(ProductStateLoading());
    try {
      ProductService productService = ProductService();
      List<ProductModel> data = await productService.fetchData();
      emit(ProductStateLoaded(products: data));
    } catch (e) {
      emit(ProductStateError());
    }
  }
}
