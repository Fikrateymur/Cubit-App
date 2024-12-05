import 'package:cubit_example/constants/button_drawer.dart';
import 'package:cubit_example/constants/favorite_row.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:cubit_example/cubit/cart_cubit.dart';
import 'package:cubit_example/cubit/counter_cubit.dart';
import 'package:cubit_example/cubit/favorite_cubit.dart';
import 'package:cubit_example/data/cart_info.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.veryLightGrey,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 42,
                right: 30,
              ),
              child: BlocBuilder<FavoriteCubit, FavoriteState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      const Row(
                        children: [
                          ButtonDrawer(),
                          SizedBox(width: 53),
                          Text(
                            'Favorites',
                            style: AppTypography.favoriteTitle,
                          )
                        ],
                      ),
                      state.favorites.isEmpty
                          ? const Padding(
                              padding: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  'There is no Favorite product here!',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            )
                          : ListView.separated(
                              shrinkWrap: true,
                              primary: false,
                              itemBuilder: (context, index) {
                                return FavoriteRow(
                                  onTapCart: () {
                                    // setState(
                                    // () {
                                    var isCartItem = CartInfo(
                                      productInfo: state.favorites[index],
                                      color:
                                          state.favorites[index].selectedColor!,
                                      count: 1,
                                    );
                                    final items = context.read<CartCubit>();
                                    var checkCartItem = items.state.cartItems
                                        .any((i) =>
                                            i.productInfo.id ==
                                            isCartItem.productInfo.id);
                                    if (!checkCartItem) {
                                      print('Cartttt');
                                      // isCartItems.add(isCartItem);
                                      context
                                          .read<CartCubit>()
                                          .addToCart(isCartItem);
                                    }

                                    // },
                                    // );
                                  },
                                  onTap: () {
                                    context
                                        .read<FavoriteCubit>()
                                        .removeFromFavorites(
                                            state.favorites[index]);
                                    // setState(
                                    //   () {
                                    //     state.favorites
                                    //         .remove(state.favorites[index]);
                                    //   },
                                    // );
                                  },
                                  color: state
                                      .favorites[index].selectedColor!.color,
                                  textName: state.favorites[index].name,
                                  picture: state.favorites[index].imagePath,
                                  price: state.favorites[index].price,
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 10,
                                );
                              },
                              itemCount: state.favorites.length,
                            ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
