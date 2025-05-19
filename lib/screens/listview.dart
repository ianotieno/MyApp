import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          itemExtent: 100,
          children: [
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.amber.shade400,foregroundColor: Colors.amber.shade200,child: Icon(Icons.account_box_sharp)),
              title: Text("Sales"),
              subtitle: Text("Sales of the week"),
              trailing: Icon(Icons.add),
              onTap: (){},
              tileColor: Colors.amber.shade200,
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_outlined),
              title: Text("Customer"),
              subtitle: Text("Customer of the week"),
              trailing: Icon(Icons.add),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text("Profit"),
              subtitle: Text("Profit of the week"),
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}