import 'package:flutter/material.dart';

class Stack1 extends StatelessWidget {
  const Stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 244, 242, 242),
      )
      ,
      backgroundColor: Colors.blueGrey,
      body: Center(
   child: Container(
    padding: const EdgeInsets.all(16),
    constraints: const BoxConstraints.expand(
      width: 330,
      height: 450,
    ),
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.white24,
          offset: Offset(0, 2),
          spreadRadius: 5,
          blurRadius: 5
        )
      ],
      image: DecorationImage(image: AssetImage('images/dashboard.png'),
      fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10.0)
      )
    ),
     child:Stack(
      children: [
        Text("Editors Choices",
        style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        Positioned(
          top: 20,
          child: Text("The art of making coffee",
          style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 20,
          child: Text("Learn to Make coffee",
          style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
         Positioned(
          bottom: 0,
          right: 0,
           child: Text("Code With Tea",
                   style: TextStyle(color: Colors.black, fontSize: 16),
                   ),
         ),
      ],
     ) ,


   )
      ),
    );
  }
}