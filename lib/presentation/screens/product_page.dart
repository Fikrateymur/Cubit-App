import 'package:cubit_example/constants/back_arrow.dart';
import 'package:cubit_example/constants/button.dart';
import 'package:cubit_example/constants/chosing_button.dart';
import 'package:cubit_example/constants/chosing_color.dart';
import 'package:cubit_example/constants/like_button.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_pictures.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:cubit_example/cubit/counter_cubit.dart';
import 'package:cubit_example/cubit/favorite_cubit.dart';
import 'package:cubit_example/data/mock_data.dart';
import 'package:cubit_example/data/product_color.dart';
import 'package:cubit_example/data/product_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({
    super.key,
    required this.productInfo,
    required this.index,
  });
  final int index;
  final ProductInfo productInfo;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String isSelected = 'XS';
  var selectedColor = productColors.first;
  // bool onPressed = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        final product = state.products[widget.index];
        return Scaffold(
          backgroundColor: AppColors.veryLightGrey,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 435,
                      child: Image.asset(widget.productInfo.imagePath),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 34, top: 42),
                      child: BackArrow(
                        radius: 21,
                        icon: Icon(
                          color: AppColors.baseRed,
                          Icons.arrow_back,
                          size: 34,
                        ),
                      ),
                    ),
                    BlocBuilder<FavoriteCubit, FavoriteState>(
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 22),
                          child: LikeButton(
                            likeImage: state.onPressed
                                ? const AssetImage(
                                    AppPictures.iconSelectedHeart)
                                : const AssetImage(AppPictures.iconHeart),
                            color: AppColors.roundedHeart,
                            onTap: () {
                              // setState(() {
                              //   onPressed = !onPressed;
                              // });
                              if (state.favorites
                                  .any((i) => i.id == widget.productInfo.id)) {
                                context
                                    .read<FavoriteCubit>()
                                    .removeFromFavorites(product);
                              } else {
                                context
                                    .read<FavoriteCubit>()
                                    .addToFavorites(product);
                              }

                              // context.read<FavoriteCubit>().onPressed();

                              widget.productInfo.selectedColor = selectedColor;
                              // setState(
                              //   () {
                              //     onPressed = !onPressed;
                              //     if (isFavoriteItems
                              //         .any((i) => i.id == widget.productInfo.id)) {
                              //       // isFavoriteItems.remove(widget.productInfo);

                              //     } else {
                              //       widget.productInfo.selectedColor =
                              //           selectedColor;
                              //       isFavoriteItems.add(widget.productInfo);
                              //     }
                              //   },
                              // );
                            },
                          ),
                        );
                      },
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 57,
                    left: 27,
                    right: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.productInfo.name,
                        style: AppTypography.productTitle,
                      ),
                      Text(
                        '${widget.productInfo.price}\$',
                        style: AppTypography.productTitlePrice,
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 29),
                  child: Text(
                    'Leila dress',
                    style: AppTypography.aboutUsText,
                  ),
                ),
                const SizedBox(height: 21),
                const Padding(
                  padding: EdgeInsets.only(left: 29),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus, sed sociis at pellentesque adipiscing tristique eu lectus venenatis.',
                    style: AppTypography.productInfo,
                  ),
                ),
                const SizedBox(height: 39),
                const Padding(
                  padding: EdgeInsets.only(left: 21),
                  child: Text(
                    'Choose size',
                    style: AppTypography.productSize,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Row(
                    children: [
                      for (var i = 0; i < selectedSize.length; i++)
                        ChosingButton(
                          text: Text(
                            selectedSize[i],
                            style: isSelected == selectedSize[i]
                                ? AppTypography.productCircleSelected
                                : AppTypography.productCircle,
                          ),
                          onTap: () {
                            setState(
                              () {
                                isSelected = selectedSize[i];
                              },
                            );
                          },
                          color: isSelected == selectedSize[i]
                              ? AppColors.baseRed
                              : Colors.white,
                        )
                    ],
                  ),
                ),
                const SizedBox(height: 39),
                const Padding(
                  padding: EdgeInsets.only(left: 21),
                  child: Text(
                    'Choose color',
                    style: AppTypography.productSize,
                  ),
                ),
                const SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.only(left: 29, right: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var i = 0; i < productColors.length; i++)
                        ChosingColor(
                            color: productColors[i].color,
                            widget: selectedColor == productColors[i]
                                ? const Icon(Icons.check)
                                : const Icon(
                                    Icons.close_rounded,
                                    color: Colors.white,
                                  ),
                            onTap: () {
                              setState(
                                () {
                                  selectedColor = productColors[i];
                                  widget.productInfo.selectedColor =
                                      selectedColor;
                                },
                              );
                            })
                      // ChosingColor(
                      //   color: AppColors.baseRed,
                      // ),
                      // ChosingColor(
                      //   color: AppColors.splashBackgroundColor,
                      // ),
                      // ChosingColor(
                      //   color: AppColors.baseBrown,
                      // ),
                      // ChosingColor(
                      //   color: AppColors.branchLabelColor,
                      // ),
                    ],
                  ),
                ),
                const SizedBox(height: 42),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: 'Buy Now',
                        onPressed: () {},
                        width: 203,
                      ),
                      const Image(image: AssetImage(AppPictures.productImage))
                    ],
                  ),
                ),
                const SizedBox(height: 106),
              ],
            ),
          ),
        );
      },
    );
  }
}
