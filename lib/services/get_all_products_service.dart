import 'package:chop_app/helper/api.dart';
import 'package:chop_app/models/product_model.dart';

class AllProductsService {

  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> jsonData =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> data = [];
    for (var product in jsonData) {
      data.add(ProductModel.fromjson(product));
    }
    return data;
  }
}
