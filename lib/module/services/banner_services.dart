part of 'services.dart';

class BannerService {
  static Future<List<BannerModel>> getBanner() async {
    var response = await http.get(DataApi.apiBanner);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List result = data;
      print(result);
      return result.map((e) => BannerModel.fromJson(e)).toList();
    }
    throw Exception();
  }
}
