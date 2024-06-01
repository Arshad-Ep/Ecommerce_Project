part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();
  
  @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState {}

class ProductStateLoading extends ProductState {}

class ProductStateLoaded extends ProductState {
  final List<ProductModel> products;

  const ProductStateLoaded({required this.products});

  @override
  List<Object?> get props => [products];
}

class ProductStateError extends ProductState {}
