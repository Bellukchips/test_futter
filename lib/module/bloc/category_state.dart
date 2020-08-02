part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
}

class CategoryInitial extends CategoryState {
  @override
  List<Object> get props => [];
}

class CategoryLoadingState extends CategoryState {
  @override
  List<Object> get props => [];
}

class CategoryLoadedState extends CategoryState {
  final List<CategoryModel> category;
  CategoryLoadedState({@required this.category});
  @override

  List<Object> get props => [category];
}

class CategoryErrorState extends CategoryState {
  final String message;
  CategoryErrorState({this.message});
  @override
  List<Object> get props => [message];
}
