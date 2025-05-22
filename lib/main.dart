import 'package:flutter/material.dart';
import 'package:pizza_app/screens/App.dart';
import 'package:pizza_app/screens/custom.dart';
import 'package:pizza_app/screens/float.dart';
import 'package:pizza_app/screens/form.dart';

import 'package:pizza_app/screens/home.dart';
import 'package:pizza_app/screens/listview.dart';
import 'package:pizza_app/screens/listview2.dart';
import 'package:pizza_app/screens/rowcolumn.dart';
import 'package:pizza_app/screens/stack1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Diary',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home:MyForm(),
    );  
  }
}
