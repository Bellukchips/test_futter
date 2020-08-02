part of 'models.dart';

class CategoryModel extends Equatable {
  final int id;
  final String name;
  final String image;

  CategoryModel({this.id, this.name, this.image});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
      id: json['id'], name: json['name'], image: json['image']['src']);

  @override
  List<Object> get props => [id, name, image];
}
