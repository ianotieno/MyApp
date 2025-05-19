import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.menu), onPressed: (){},),
        title: Text("Home"),
        actions: [
       IconButton(icon:Icon(Icons.shopping_cart), onPressed: (){},),
       IconButton(icon:Icon(Icons.search), onPressed: (){},),
       IconButton(icon:Icon(Icons.menu_book), onPressed: (){},),
        ],
        elevation: 0,
        titleSpacing: 40,
        backgroundColor: const Color.fromARGB(255, 243, 210, 249),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("App Text", style: TextStyle(fontSize: 20)),
             Text("Coding With Tea", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}