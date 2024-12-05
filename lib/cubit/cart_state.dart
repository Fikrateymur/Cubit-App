part of 'cart_cubit.dart';

class CartState {
  CartState({
    required this.cartItems,
    required this.count,
  });

  final List<CartInfo> cartItems;
  final int count;
}
