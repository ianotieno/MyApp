import 'package:flutter/material.dart';
import 'package:pizza_app/screens/form.dart';
enum ProductTypeEnum { Downloadable, Deliverable, }

class MyRadioButton extends StatelessWidget {
 
  MyRadioButton({super.key,
  required this.title,
  required this.value,
  required this.onChanged,
  required this.selectedProductTypeEnum,
  });

  String title;
  ProductTypeEnum value;
  ProductTypeEnum? selectedProductTypeEnum;
  Function(ProductTypeEnum?)? onChanged;



  @override
  Widget build(BuildContext context) {
    return  Expanded(
                  child: RadioListTile<ProductTypeEnum>(
                                contentPadding: EdgeInsets.all(0),
                                value: value,
                                tileColor: Color.fromARGB(255, 229, 217, 246),
                                groupValue: selectedProductTypeEnum, 
                                title: Text(title,),
                               onChanged: onChanged,)
                              );}
                
  }
