part of 'models.dart';

class ChartModel extends ProductModel{
  final int id;
  final String price;
  ChartModel(ProductModel productModel,{this.id,this.price});
  @override
  List<Object> get props => super.props + [id, price];

}