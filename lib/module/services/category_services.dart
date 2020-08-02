part of 'services.dart';

class CategoryServices {
  static Future<List<CategoryModel>> getCategory() async {
    var response = await http.get(DataApi.apiCategories);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List result = data;
      print(result);
      return result.map((e) => CategoryModel.fromJson(e)).toList();
    }
    throw Exception();
  }
}
