part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();
}

class ProductInitial extends ProductState {
  @override
  List<Object> get props => [];
}

class ProductLoading extends ProductState {
  @override
  List<Object> get props => [];
}

class ProductLoaded extends ProductState {
  final List<ProductModel> product;
  ProductLoaded({@required this.product});
  @override
  List<Object> get props => [product];
}

class ProductError extends ProductState {
  final String msg;
  ProductError({this.msg});
  @override
  List<Object> get props => [msg];
}
