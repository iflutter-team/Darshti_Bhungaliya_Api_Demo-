import 'package:api_demo/screen/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: GetBuilder<HomeController>(
          id: "Image",
          builder: (controller) => controller.loader
              ? CircularProgressIndicator()
              : GridView.builder(
                  itemCount: controller.productList!.products!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              child: Image.network(controller
                                  .productList!.products![index].images!.first
                                  .toString())),
                          Text(controller.productList!.products![index].title
                              .toString()),
                          Row(
                            children: [
                              Text("\$"),
                              Text(controller
                                  .productList!.products![index].price
                                  .toString()),
                              Spacer(),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(controller
                                  .productList!.products![index].rating
                                  .toString()),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
          //   : ListView.builder(
          // itemCount:controller.productList!.products!.length ,
          // itemBuilder: (context, index) => Text(controller.productList!.products![index].title.toString()),
          // itemBuilder: (context, index) => ListTile(
          //   leading: Image.network(controller.imageList![index].url!),
          //   title: Text(controller.imageList![index].albumId!.toString()),
          //   subtitle: Text(
          //       controller.imageList![index].thumbnailUrl!.toString()),
          // ),
          ),
    );
  }
}
