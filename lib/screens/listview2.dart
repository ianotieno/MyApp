import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  Listview2({super.key});
  List<String> product = ["chair", "sofa", "bed"];
  List<String> productDetails = ["Large chair", "Medium Sofa", "Small Bed"];
  List<int> price = [300, 400, 500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer"),),
      drawer: Drawer(
        child: ListView(
          children: [
           UserAccountsDrawerHeader(
              accountEmail: Text("ianotieno23@gmail.com"),
              accountName: Text("Ian Otieno"),
              currentAccountPicture: CircleAvatar(foregroundImage:AssetImage('images/dashboard.png') ,),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage:AssetImage('images/dashboard.png') ,),
                CircleAvatar(foregroundImage:AssetImage('images/dashboard.png') ,),
              ],
              ),
              ListTile(
                    leading:Icon(Icons.home),title: Text ("Home"),onTap: () => {},
                  ),
                  
                   ListTile(
                    leading:Icon(Icons.shopping_cart_outlined),title: Text ("Shop"),onTap: () => {},
                  ),
                
                   ListTile(
                    leading:Icon(Icons.favorite),title: Text ("Favorite"),onTap: () => {},
                  ),
                 Divider(),
             Padding(
               padding: const EdgeInsets.all(14.0),
               child: Text("Labels"),
               
             ),
              ListTile(
                    leading:Icon(Icons.label),title: Text ("Red"),onTap: () => {},
                  ),
                   ListTile(
                    leading:Icon(Icons.label),title: Text ("Blue"),onTap: () => {},
                  ),
                   ListTile(
                    leading:Icon(Icons.label),title: Text ("Green"),onTap: () => {},
                  ),
          ],
        ),
      ),
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
