import 'package:cubit_example/data/cart_info.dart';
import 'package:cubit_example/data/product_info.dart';

List<ProductInfo> products = [
  ProductInfo(
    id: 1,
    name: 'Self Love',
    price: 25,
    imagePath: 'assets/pictures/first_grid.png',
    isTranding: false,
    isNew: false,
    isPopular: true,
    type: 'Boys',
  ),
  ProductInfo(
    id: 2,
    name: 'Good Vibes',
    price: 187,
    imagePath: 'assets/pictures/second_grid.png',
    isTranding: true,
    isNew: true,
    isPopular: true,
    type: 'Boys',
  ),
  ProductInfo(
    id: 3,
    name: 'Good Vibes',
    price: 187,
    imagePath: 'assets/pictures/third_grid.png',
    isTranding: false,
    isNew: true,
    isPopular: true,
    type: 'Kids',
  ),
  ProductInfo(
    id: 4,
    name: 'Good Vibes',
    price: 187,
    imagePath: 'assets/pictures/fourth_grid.png',
    isTranding: true,
    isNew: true,
    isPopular: true,
    type: 'Kids',
  ),
  ProductInfo(
    id: 5,
    name: 'Good Vibes',
    price: 187,
    imagePath: 'assets/pictures/fifth_grid.png',
    isTranding: false,
    isNew: true,
    isPopular: false,
    type: 'Girls',
  ),
  ProductInfo(
    id: 6,
    name: 'Good Vibes',
    price: 187,
    imagePath: 'assets/pictures/sixth_grid.png',
    isTranding: true,
    isNew: false,
    isPopular: false,
    type: 'Girls',
  ),
];

List<String> homeFilter = [
  'All',
  'Tranding',
  'New',
];

List<String> categoryFilter = [
  'All',
  'Boys',
  'Girls',
  'Kids',
];

List<String> selectedSize = [
  'XS',
  'S',
  'M',
  'L',
  'XL',
];

var isCartItems = <CartInfo>[];
