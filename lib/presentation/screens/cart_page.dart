import 'package:cubit_example/constants/button.dart';
import 'package:cubit_example/constants/button_drawer.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:cubit_example/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
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
              child: Column(
                children: [
                  const Row(
                    children: [
                      ButtonDrawer(),
                      SizedBox(width: 94),
                      Text(
                        'Cart',
                        style: AppTypography.favoriteTitle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 37),
                  state.cartItems.isEmpty
                      ? const Padding(
                          padding: EdgeInsets.only(top: 50, bottom: 50),
                          child: Center(
                            child: Text(
                              'There is no Favorite product here!',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                      : Column(
                          children: [
                            for (var i = 0; i < state.cartItems.length; i++)
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 10,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                height: 122,
                                width: 314,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 15,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(state
                                          .cartItems[i].productInfo.imagePath),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            state.cartItems[i].productInfo.name,
                                            style: AppTypography.cartTitle,
                                          ),
                                          Text(
                                            '${state.cartItems[i].productInfo.price} AZN',
                                            style: AppTypography.cartPrice,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    // setState(() {
                                                    //   state
                                                    //       .cartItems[i].count++;
                                                    // });
                                                    context
                                                        .read<CartCubit>()
                                                        .increment();
                                                  },
                                                  child: const Icon(Icons.add)),
                                              const SizedBox(width: 25),
                                              Text(state.count.toString()),
                                              const SizedBox(width: 25),
                                              GestureDetector(
                                                  onTap: () {
                                                    // if (state.cartItems[i]
                                                    //         .count ==
                                                    //     1) {
                                                    //   print(i);
                                                    //   context
                                                    //       .read<CartCubit>()
                                                    //       .removeFromCart(state
                                                    //           .cartItems[i]);
                                                    // }
                                                    // context
                                                    //     .read<CartCubit>()
                                                    //     .decrement();
                                                    setState(
                                                      () {
                                                        print(state.cartItems[i]
                                                            .count);
                                                        state.cartItems[i]
                                                            .count--;
                                                        if (state.cartItems[i]
                                                                .count ==
                                                            0) {
                                                          state.cartItems
                                                              .removeWhere(
                                                            (e) =>
                                                                e.productInfo
                                                                    .id ==
                                                                state
                                                                    .cartItems[
                                                                        i]
                                                                    .productInfo
                                                                    .id,
                                                          );
                                                        }
                                                      },
                                                    );
                                                  },
                                                  child:
                                                      const Icon(Icons.remove)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const Text(
                                            'Total',
                                            style: AppTypography.cartTotal,
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            '${state.cartItems[i].count * state.cartItems[i].productInfo.price}',
                                            style: AppTypography.cartTotalPrice,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: 'Make Purchase',
                        onPressed: () {},
                        width: 234,
                      ),
                      const Text(
                        '250\$',
                        style: AppTypography.categoryItemPrice,
                      )
                    ],
                  ),
                  const SizedBox(height: 76)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
