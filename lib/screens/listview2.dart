import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  const Listview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Padding(padding:const EdgeInsets.all(20.0),
            child:CircleAvatar (
             child: Text("C"),
            ),
            ),
            Divider(),
            Padding(padding:const EdgeInsets.all(8.0),
            child:Text ("Flutter's hot reload feature helps you quickly and easily experiment, build UIs, add features, and fix bugs. Hot reload works by injecting updated source code files into the running Dart Virtual Machine (VM).  "),)
            
          ],
        ),
      ),
    );
  }
}