part of 'models.dart';

class BannerModel extends Equatable {
  final int id;
  final String img;
  BannerModel({this.id, this.img});
  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      BannerModel(id: json['id'], img: json['guid']['rendered']);
  @override
  List<Object> get props => [id, img];
}
