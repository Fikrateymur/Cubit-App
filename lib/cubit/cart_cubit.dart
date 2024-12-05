import 'package:bloc/bloc.dart';
import 'package:cubit_example/data/cart_info.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit()
      : super(CartState(
          cartItems: <CartInfo>[],
          count: 0,
        ));

  void addToCart(CartInfo cartProduct) {
    emit(
      CartState(
        cartItems: state.cartItems..add(cartProduct),
        count: state.count + 1,
      ),
    );
  }

  void removeFromCart(CartInfo cartProduct) {
    emit(
      CartState(
        cartItems: state.cartItems..remove(cartProduct),
        count: state.count,
      ),
    );
  }

  void increment() => emit(CartState(
        cartItems: state.cartItems,
        count: state.count + 1,
      ));

  void decrement() => emit(CartState(
        cartItems: state.cartItems,
        count: state.count - 1,
      ));
}
