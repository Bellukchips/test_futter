import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tumbasin/module/models/models.dart';
import 'package:tumbasin/module/services/services.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial());

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    if (event is FetchProduct) {
      yield ProductLoading();
      try {
        List<ProductModel> product = await ProductService.getProduct();
        yield ProductLoaded(product: product);
      } catch (e) {
        yield ProductError(msg: e.toString());
      }
    }
  }
}
