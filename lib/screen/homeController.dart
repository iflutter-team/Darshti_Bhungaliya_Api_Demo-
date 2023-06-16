import 'package:api_demo/screen/home_api.dart';
import 'package:get/get.dart';

import '../services/model_class.dart';

class HomeController extends GetxController{
List<Image>? imageList;
Products? productList;
bool loader = false;
@override
  void onInit() {
  getImageList();
  // TODO: implement onInit
    super.onInit();
  }
  Future<void>getImageList() async {
  loader=true;
  productList = await HomeScreenApi.getData();
  loader=false;
  update(["Image"]);
  }
}