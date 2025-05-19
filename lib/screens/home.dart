import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: (){}, 
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black87, backgroundColor: Colors.yellow, fixedSize: Size(200, 100),
          padding: EdgeInsets.all(20.0),
          textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          elevation: 15,
          shadowColor: Colors.yellow,
          side: BorderSide(
            color: Colors.black,
            width: 2,
          ),
          shape: StadiumBorder()
        ),
        icon: Icon(Icons.add_shopping_cart_outlined),  
        label: Text('Lets Begin'),
         //child: Text('Lets Begin') ,
        ),
      )
      
      );
  }
}
