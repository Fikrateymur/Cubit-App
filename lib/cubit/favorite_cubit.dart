import 'package:bloc/bloc.dart';
import 'package:cubit_example/data/product_info.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit()
      : super(
          FavoriteState(
            favorites: <ProductInfo>[],
            onPressed: false,
          ),
        );

  void addToFavorites(ProductInfo favoriteProduct) {
    emit(
      FavoriteState(
          favorites: state.favorites..add(favoriteProduct), onPressed: true),
    );
  }

  void removeFromFavorites(ProductInfo favoriteProduct) {
    emit(FavoriteState(
        favorites: state.favorites..remove(favoriteProduct), onPressed: false));
  }
}
