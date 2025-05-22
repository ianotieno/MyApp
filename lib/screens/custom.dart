import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/listview3.dart';

class Custom extends StatelessWidget {
  const Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom AppBar"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTileWidget(subtitle: "Mouse", title: "A4Tech",)
       
        ],
      )
    );
  }
}

