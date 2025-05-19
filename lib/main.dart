import 'package:flutter/material.dart';
import 'package:pizza_app/screens/App.dart';

import 'package:pizza_app/screens/home.dart';

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
      home: App(),
    );  
  }
}
