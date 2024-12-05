part of 'favorite_cubit.dart';

class FavoriteState {
  FavoriteState({
    required this.favorites,
    required this.onPressed,
  });
  final List<ProductInfo> favorites;
  bool onPressed = false;
}
