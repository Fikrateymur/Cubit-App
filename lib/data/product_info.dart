import 'package:cubit_example/data/product_color.dart';

class ProductInfo {
  int id;
  String name;
  double price;
  String imagePath;
  String type;
  bool isTranding;
  bool isNew;
  bool isPopular;
  ColorChoosed? selectedColor;
  ProductInfo({
    this.selectedColor,
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.type,
    required this.isTranding,
    required this.isNew,
    required this.isPopular,
  });
}
