import 'package:flutter/material.dart';
import 'package:pizza_app/screens/formDetails.dart';
import 'package:pizza_app/widgets/my_radio.dart';


class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  _MyFormState() {
     _selectedVal = _productSizeList[0]; // Initialize with the first value
  }
  var _productName,
      _productDes; // Declare variables to hold the text field values
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  final _productSizeList = [
    "Small",
    "Medium",
    "Large",
  ];
  String? _selectedVal ="";
  ProductTypeEnum? _productTypeEnum;
  final _formKey = GlobalKey<FormState>();

   bool? _listTileChecked = false;
  @override
  void initState() {
    super.initState();
    _productController.addListener(_updateText);
    _productDesController.addListener(_updateText);
  }

  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }

  void _updateText() {
    setState(() {
      _productName = _productController.text;
      _productDes = _productDesController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Form "), centerTitle: true),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text ("Add Product details in the form below",),
            const SizedBox(height: 20),
            TextFormField(
              controller: _productController,
             validator: (value) => value!.isEmpty ? "Please enter a product name" : null,
              decoration: InputDecoration(
                labelText: "Product Name",
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _productDesController,
              validator: (value) => value!.isEmpty ? "Please enter a product description" : null,
              decoration: InputDecoration(
                labelText: "Product Description",
                prefixIcon: Icon(Icons.description_outlined),
                border: OutlineInputBorder(),
              ),
            ),
           SizedBox(height: 5,),
            CheckboxListTile(
              tileColor: Colors.deepPurple.shade50,
              contentPadding: EdgeInsets.all(0),
              value: _listTileChecked, 
              onChanged: (val){setState(() {
                _listTileChecked = val;
                
              });},
              
              tristate: true,
              title: Text("Top Product"),
              subtitle: Text("This is a top product"),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            SizedBox(height: 5,),
            Row(children: [
                MyRadioButton(title: ProductTypeEnum.Deliverable.name, 
                value:ProductTypeEnum.Deliverable ,
                 selectedProductTypeEnum: _productTypeEnum, 
                onChanged: 
                    (value) {
                      setState(() {
                        _productTypeEnum = value;
                      });
                    },),
                    SizedBox(width: 10,),
                    MyRadioButton(title: ProductTypeEnum.Downloadable.name, 
                value:ProductTypeEnum.Downloadable ,
                 selectedProductTypeEnum: _productTypeEnum, 
                onChanged: 
                    (value) {
                      setState(() {
                        _productTypeEnum = value;
                      });
                    },),

            ],),
            SizedBox(height: 20),
          
            DropdownButtonFormField(
              
              value: _selectedVal,items: _productSizeList.map((e){
            
              return DropdownMenuItem(
                value: e,
                child: Text(e),
              );
            }
            ).toList(), onChanged: (val){
              setState(() {
                _selectedVal = val;
              });
            },
            icon: Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.deepPurple.shade300),
            dropdownColor: Colors.deepPurple.shade50,
            isExpanded: true,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "Product Size",
              prefixIcon: Icon(
                Icons.accessibility_new_rounded,
                color: Colors.deepPurple,
              )
            ),
           
            ),
            SizedBox(height: 20),
            myButt(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myButt(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsForm(productName: _productController.text,
                  productDes: _productDesController.text);
            },
          ),
        );
      },
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      child: Text("Submit Form"),
    );
  }
}
