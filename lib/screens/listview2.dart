import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  Listview2({super.key});
  List<String> product = ["chair", "sofa", "bed"];
  List<String> productDetails = ["Large chair", "Medium Sofa", "Small Bed"];
  List<int> price = [300, 400, 500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: product.length,
          itemBuilder: (context, index) {
            return ListTile(
             leading: CircleAvatar(child: Text(product[index][0]),),
             title: Text(product[index]),
             subtitle: Text(productDetails[index]),
             trailing: Text(price[index].toString()),
            );
          },
        ),
      ),
    );
  }
}
