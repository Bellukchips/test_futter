import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tumbasin/module/models/models.dart';
import 'package:tumbasin/module/services/services.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial());

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    if (event is FetchCategory) {
      yield CategoryLoadingState();
      try {
        List<CategoryModel> cateogry = await CategoryServices.getCategory();
        yield CategoryLoadedState(category: cateogry);
      } catch (e) {
        yield CategoryErrorState(message: e.toString());
      }
    }
  }
}
