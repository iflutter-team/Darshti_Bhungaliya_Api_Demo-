import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class HttpServices {
  static Future<http.Response?> getApi({
    required String url,
  }) async {
    try {
      if(kDebugMode){
        print("url=====>$url");
      }
      return await http.get(Uri.parse(url));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
  static Future<http.Response?> postApi({required String url,required Map<String,dynamic>? body})
  async {
    try {
      if (kDebugMode){
        print("url=====>$url");
      }
      return await http.post(Uri.parse(url));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
  }
