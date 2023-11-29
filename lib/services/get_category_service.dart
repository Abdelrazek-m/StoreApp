import 'package:chop_app/helper/api.dart';
import 'package:chop_app/models/product_model.dart';

class CategoryService {

  Future<List<dynamic>> getCategoryService(
      {required String categoryName}) async {
    List<dynamic> jsonData = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    

      List<ProductModel> data = [];

      for (var product in jsonData) {
        data.add(ProductModel.fromjson(product));
      }
      return data;
   
  }
}
