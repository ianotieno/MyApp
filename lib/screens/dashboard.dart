import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
      
        width: 350,
        height: 250,
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          
          //borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 2),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('images/dashboard.png'),
            fit: BoxFit.cover,
          ),
        ),
       
      ),

        
      
    );
  }
}
