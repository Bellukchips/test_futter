part of 'models.dart';

class ProductModel extends Equatable {
  final int id;
  final String name;
  final String price;
  final String img;
  ProductModel({this.id, this.name, this.price, this.img});
  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        img: json['images'][0]['src']
      );

  @override
  List<Object> get props => [id, name, price,price];
}
