import 'package:flutter/material.dart';
import 'package:pizza_app/models/product_model.dart';

class DetailsForm extends StatelessWidget {
  DetailsForm({super.key, required this.productDetails});
  ProductDetails productDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details form"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.account_balance_wallet_outlined),
              title: Text(""),
              subtitle: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
