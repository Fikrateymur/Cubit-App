import 'package:cubit_example/constants/button.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:cubit_example/cubit/type_cubit.dart';
import 'package:cubit_example/presentation/screens/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  // var filter = 'All';

  // List<ProductInfo> selectedCategoryProducts() {
  //   if (filter == 'All') {
  //     return products;
  //   } else if (filter == 'Boys') {
  //     return products.where((i) => i.type == 'Boys').toList();
  //   } else if (filter == 'Girls') {
  //     return products.where((i) => i.type == 'Girls').toList();
  //   } else if (filter == 'Kids') {
  //     return products.where((i) => i.type == 'Kids').toList();
  //   }
  //   return products;
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TypeCubit, TypeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.veryLightGrey,
            body: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 33,
              ),
              child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: AppColors.shadowColor,
                            spreadRadius: 0,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.25),
                        ),
                      ),
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 28,
                          top: 10.69,
                          bottom: 10.69,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintStyle: AppTypography.hintText,
                            hintText: 'Search ...',
                            suffixIcon: Icon(
                              Icons.search,
                              color: AppColors.iconSelectedtColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 44),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // setState(() {
                            //   filter = 'All';
                            // });
                            context.read<TypeCubit>().porductListAll();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: state.categoryfilter == 'All'
                                  ? AppColors.iconSelectedtColor
                                  : Colors.white),
                          child: Text('All',
                              style: state.categoryfilter == 'All'
                                  ? AppTypography.isPressedButtonText
                                  : AppTypography.isNotPressedButtonText),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // setState(() {
                            //   filter = 'Boys';
                            // });
                            context.read<TypeCubit>().porductListBoys();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: state.categoryfilter == 'Boys'
                                  ? AppColors.iconSelectedtColor
                                  : Colors.white),
                          child: Text('Boys',
                              style: state.categoryfilter == 'Boys'
                                  ? AppTypography.isPressedButtonText
                                  : AppTypography.isNotPressedButtonText),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // setState(() {
                            //   filter = 'Girls';
                            // });
                            context.read<TypeCubit>().porductListGirls();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: state.categoryfilter == 'Girls'
                                  ? AppColors.iconSelectedtColor
                                  : Colors.white),
                          child: Text('Girls',
                              style: state.categoryfilter == 'Girls'
                                  ? AppTypography.isPressedButtonText
                                  : AppTypography.isNotPressedButtonText),
                        ),
                        // const SizedBox(width: 25),
                        ElevatedButton(
                          onPressed: () {
                            // setState(() {
                            //   filter = 'Kids';
                            // });
                            context.read<TypeCubit>().porductListKids();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: state.categoryfilter == 'Kids'
                                  ? AppColors.iconSelectedtColor
                                  : Colors.white),
                          child: Text('Kids',
                              style: state.categoryfilter == 'Kids'
                                  ? AppTypography.isPressedButtonText
                                  : AppTypography.isNotPressedButtonText),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 300,
                        childAspectRatio: 1,
                      ),
                      itemCount: state.products.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductPage(
                                      productInfo: state.products[index],
                                      index: index,
                                    ),
                                  ),
                                );
                              },
                              child:
                                  Image.asset(state.products[index].imagePath),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              state.products[index].name,
                              style: AppTypography.categoryItemName,
                            ),
                            Text(
                              '${state.products[index].price}Azn',
                              style: AppTypography.categoryItemPrice,
                            ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 63),
                    Row(
                      children: [
                        Button(
                          text: 'Sort',
                          onPressed: () {},
                          width: 153,
                        ),
                        Button(
                          text: 'Filter',
                          onPressed: () {},
                          width: 153,
                        )
                      ],
                    ),
                    const SizedBox(height: 94),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
