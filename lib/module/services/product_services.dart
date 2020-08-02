part of 'services.dart';

class ProductService {
  static Future<List<ProductModel>> getProduct() async {
    var response = await http.get(DataApi.apiProduct);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List result = data;
      print(result);
      return result.map((e) => ProductModel.fromJson(e)).toList();
    }
    throw Exception();
  }
}
