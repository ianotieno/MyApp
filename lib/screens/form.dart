import 'package:flutter/material.dart';
import 'package:pizza_app/screens/formDetails.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var _productName;
  final _productController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _productController.addListener(_updateText);
  }

  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }

  void _updateText() {
    setState(() {
      _productName = _productController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Form"), centerTitle: true),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextFormField(
              controller: _productController,
              decoration: InputDecoration(
                labelText: "Product Name",
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              controller: _productController,
              decoration: InputDecoration(
                labelText: "Product Name",
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),

            myButt(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myButt(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsForm(productName: _productController.text);
            },
          ),
        );
      },
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      child: Text("Submit Form"),
    );
  }
}
