import 'package:cubit_example/constants/theme/app_pictures.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:flutter/material.dart';

class FavoriteRow extends StatefulWidget {
  const FavoriteRow({
    super.key,
    required this.textName,
    required this.picture,
    required this.price,
    required this.color,
    required this.onTap,
    required this.onTapCart,
  });

  final GestureTapCallback onTapCart;
  final Function onTap;
  final String textName;
  final double price;
  final String picture;
  final Color color;

  @override
  State<FavoriteRow> createState() => _FavoriteRowState();
}

class _FavoriteRowState extends State<FavoriteRow> {
  bool isSelected = true;
  // final ProductInfo productInfo=P;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Container (Background)
          Positioned(
            top: 70, // Push the container down under the image
            left: 48,
            child: Container(
              height: 136,
              width: 290, // Wider container stays under the image
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(26),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 100,
                  top: 24,
                  bottom: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(widget.textName,
                              style: AppTypography.favoriteProductName),
                          Padding(
                            padding: const EdgeInsets.only(right: 23),
                            child: Container(
                              // height: 140,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(17),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelected = !isSelected;
                                    widget.onTap();
                                  });
                                },
                                child: isSelected
                                    ? Image.asset(
                                        'assets/pictures/VectorHeartSelected.png')
                                    : Image.asset(
                                        'assets/pictures/VectorHeart.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Color',
                          style: AppTypography.favoriteColor,
                        ),
                        const SizedBox(width: 17),
                        Container(
                          decoration: BoxDecoration(
                            color: widget.color,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          height: 10,
                          width: 10,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${widget.price} Azn',
                          style: AppTypography.favoritePrice,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 23),
                          child: GestureDetector(
                            onTap: widget.onTapCart,
                            child: const Image(
                              height: 35,
                              width: 35,
                              image: AssetImage(AppPictures.productImage),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Image (Foreground)
          Positioned(
            top: 0, // Place the image at the top
            left: -40,
            child: Image.asset(
              widget.picture,
            ),
          ),
        ],
      ),
    );
  }
}
