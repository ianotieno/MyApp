import 'package:pizza_app/widgets/my_radio.dart';

class ProductDetails {
  String? productName;
  String? productdetails;
  bool? isTopProduct;
  ProductTypeEnum? productType;
  String? productSize;

  ProductDetails({
    this.productName,
    this.productdetails,
    this.isTopProduct,
    this.productType,
    this.productSize,
  });
}