import 'package:flutter/material.dart';
import 'package:pizza_app/screens/formDetails.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Form"), centerTitle: true),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailsForm();
                },
              ),
            );
          },
          style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
          child: Text("Submit Form"),
        ),
      ),
    );
  }
}
