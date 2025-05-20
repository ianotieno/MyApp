import 'package:flutter/material.dart';

class Float extends StatelessWidget {
  const Float({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
     
      backgroundColor: Colors.black12,
      foregroundColor: Colors.yellow,
       elevation: 10,
       shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          side: BorderSide(
            color: Colors.yellow,
            width: 2.0,
            style: BorderStyle.solid
          )
       ),
       child: Icon(Icons.add),
      
      
    ),

    );
  }
}