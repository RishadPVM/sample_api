import 'dart:convert';

import 'package:api_sambil/model/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ApiHelper{
  static final ApiHelper _instence = ApiHelper.internal();

  factory ApiHelper()=> _instence;
  ApiHelper.internal();

  static const _basrurl='https://api.thecatapi.com/';

  Future<dynamic> getRequest(String route)async{
   String url=_basrurl+route;
    try {
       Response response=await get(Uri.parse(url));
       if(response.statusCode==200){
      return Api.fromJson(jsonDecode(response.body));
    }else{
      return Container(
        color: Colors.blue,
      );
    }
    } catch (ex) {
      return Exception(ex);
    }
  }

}