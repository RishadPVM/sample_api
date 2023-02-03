import 'package:api_sambil/model/api_helper.dart';
import 'package:api_sambil/model/model.dart';

class ApiRepositary{
  Future<Api>fechdata()async{
    String route="v1/images/search";
    var response=await ApiHelper.internal().getRequest(route);
    print(response);
    return response;
  }
}