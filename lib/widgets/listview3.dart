import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  String title, subtitle;
  IconData leadingIcon, trailingIcon;
  Color ? listtileColor, iconColor;

  ListTileWidget({super.key, 
  this.iconColor,
  this.listtileColor,
  required this.subtitle,
  required this.title,
  this.leadingIcon = Icons.label,
 this.trailingIcon = Icons.add_shopping_cart}
    );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: listtileColor,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            width: 10,
            color: const Color.fromARGB(255, 40, 40, 40),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(leadingIcon),
          color: iconColor,
        ),

        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(onPressed: () {}, icon: Icon(trailingIcon)),
        onTap: () {},
      ),
    );
  }
}
