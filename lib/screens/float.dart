import 'package:flutter/material.dart';

class Float extends StatelessWidget {
  const Float({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 11, 11, 11),
        foregroundColor: const Color.fromARGB(255, 247, 247, 247),
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
       shape: CircularNotchedRectangle(),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0), // Reduced vertical padding
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.home, color: Colors.white, size: 24), // Reduced icon size
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 12), // Reduced font size
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0), // Adjusted padding
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.shopping_cart, color: Colors.white, size: 24), // Reduced icon size
                  Text(
                    "Shopping",
                    style: TextStyle(color: Colors.white, fontSize: 12), // Reduced font size
                  ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0), // Adjusted padding
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.favorite, color: Colors.white, size: 24), // Reduced icon size
                  Text(
                    "Favourite",
                    style: TextStyle(color: Colors.white, fontSize: 12), // Reduced font size
                  ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0), // Adjusted padding
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.settings, color: Colors.white, size: 24), // Reduced icon size
                  Text(
                    "Settings",
                    style: TextStyle(color: Colors.white, fontSize: 12), // Reduced font size
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}