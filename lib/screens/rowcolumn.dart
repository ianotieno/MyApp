import 'package:flutter/material.dart';

class Row1 extends StatelessWidget {
  const Row1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text ("Row N Column"),centerTitle: true, ),
      body: Container(
      
      child :Column(
        children: [
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Expanded(child: Image(image: AssetImage('images/dashboard.png'), width: 150,)),
           Expanded(flex:2, child: Image(image: AssetImage('images/dashboard.png'), width: 150,)),
           Expanded(flex:4,child: Image(image: AssetImage('images/dashboard.png'), width: 150,)),
            ],
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star_border,size: 23,),
              Icon(Icons.star_border,size: 23,),
              Icon(Icons.star_border,size: 23,),
              Icon(Icons.star_border,size: 23,),
              Icon(Icons.star_border,size: 23,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                Icon(Icons.phone,size: 23,),
                Text("Phone")
                ],
              ),
              Column(
                children: [
                Icon(Icons.alt_route,size: 23,),
                Text("Route")
                ],
              ),
               Column(
                children: [
               Icon(Icons.share,size: 23,),
                Text("Share")
                ],
              ),
             
              
            ],
          ),
        ],
      ),)
    );
  }
}