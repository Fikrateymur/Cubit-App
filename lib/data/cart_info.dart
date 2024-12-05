import 'package:cubit_example/data/product_color.dart';
import 'package:cubit_example/data/product_info.dart';

class CartInfo {
  CartInfo({
    required this.productInfo,
    required this.color,
    required this.count,
  });
  ProductInfo productInfo;
  ColorChoosed color;
  int count;
}
