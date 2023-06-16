import 'package:api_demo/services/http.dart';
import 'package:api_demo/utils/endPoint.dart';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

import '../services/model_class.dart';

class HomeScreenApi{
 static Future getData()async{
    try{
      http.Response? response =await HttpServices.getApi(url: EndPointRes.products);
      if(response != null&&response.statusCode==200){
        return productsFromJson(response.body);
      }
    }catch(e){
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
  addData(){}
}