import 'package:chop_app/helper/api.dart';

class AllCategorysService {
  
  Future<List<dynamic>> getCategorysService()async {
    List<dynamic> data=await Api().get(url: 'https://fakestoreapi.com/products/categories');
    
    return data;
  }
}
