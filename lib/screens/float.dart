import 'package:flutter/material.dart';

class Float extends StatelessWidget {
  const Float({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,  
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
     
      backgroundColor:Colors.blue,
      foregroundColor: Colors.yellow,
       shape: CircleBorder(
      
       ),
      
      child: Icon(Icons.add),
      
    ),
   bottomNavigationBar: BottomNavigationBar(
     items: [
       BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label: 'Home',
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.shopping_cart),
         label: 'Shop',
       ),
        BottomNavigationBarItem(
         icon: Icon(Icons.favorite),
         label: 'Favorite',
       )
     ],
     
   ),
 
   

    );
  }
}