import 'package:cubit_example/constants/button_drawer.dart';
import 'package:cubit_example/constants/container_dresses.dart';
import 'package:cubit_example/constants/location_button.dart';
import 'package:cubit_example/constants/theme/app_colors.dart';
import 'package:cubit_example/constants/theme/app_typography.dart';
import 'package:cubit_example/cubit/counter_cubit.dart';
import 'package:cubit_example/cubit/popular_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// String homeFilter = 'All';

class _HomePageState extends State<HomePage> {
//   List<ProductInfo> selectedHomeProducts() {
//     if (homeFilter == 'All') {
//       return products;
//     } else if (homeFilter == 'Tranding') {
//       return products.where((i) => i.isTranding).toList();
//     } else if (homeFilter == 'New') {
//       return products.where((i) => i.isNew).toList();
//     }
//     return products;
//   }

  @override
  Widget build(BuildContext context) {
    // String homeFilter = 'All';

    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.veryLightGrey,
          body: SafeArea(
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 35,
                      right: 30,
                      left: 30,
                      bottom: 28,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonDrawer(),
                        LocationButton(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 28, top: 47, right: 28, bottom: 27),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Popular',
                          style: AppTypography.popularText,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          child: const Text(
                            'view all',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'CormorantGaramond',
                              color: AppColors.iconSelectedtColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: BlocBuilder<PopularCubit, PopularState>(
                      builder: (context, state) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.products.length,
                          // .where((i) => i.isPopular)
                          // .toList()
                          itemBuilder: (context, index) {
                            return ContainerDresses(
                                width: 137,
                                height: 166,
                                image: state.products.toList()[index].imagePath
                                // .where((i) => i.isPopular)
                                // .toList()[index]
                                // .imagePath,
                                );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // setState(
                              //   () {
                              //     homeFilter = 'All';
                              //   },
                              // );
                              context.read<CounterCubit>().porductListAll();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: state.homefilter == 'All'
                                    ? AppColors.iconSelectedtColor
                                    : Colors.white),
                            child: Text('All',
                                style: state.homefilter == 'All'
                                    ? AppTypography.isPressedButtonText
                                    : AppTypography.isNotPressedButtonText),
                          ),
                          const SizedBox(width: 25),
                          ElevatedButton(
                            onPressed: () {
                              // setState(() {
                              //   homeFilter = 'Tranding';
                              // });
                              state.homefilter = 'Tranding';
                              print(state.homefilter);
                              context
                                  .read<CounterCubit>()
                                  .porductListTranding();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: state.homefilter == 'Tranding'
                                    ? AppColors.iconSelectedtColor
                                    : Colors.white),
                            child: Text('Tranding',
                                style: state.homefilter == 'Tranding'
                                    ? AppTypography.isPressedButtonText
                                    : AppTypography.isNotPressedButtonText),
                          ),
                          const SizedBox(width: 25),
                          ElevatedButton(
                            onPressed: () {
                              // setState(() {
                              //   homeFilter = 'New';
                              // });
                              context.read<CounterCubit>().porductListNew();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: state.homefilter == 'New'
                                    ? AppColors.iconSelectedtColor
                                    : Colors.white),
                            child: Text(
                              'New',
                              style: state.homefilter == 'New'
                                  ? AppTypography.isPressedButtonText
                                  : AppTypography.isNotPressedButtonText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 54),
                  GridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: state.products.length,
                    itemBuilder: (context, index) {
                      return ContainerDresses(
                        image: state.products[index].imagePath,
                        height: 200,
                        width: 150,
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
