// ignore_for_file: depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:bloc/bloc.dart';
import 'package:cubit_example/data/mock_data.dart';
import 'package:cubit_example/data/product_info.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit()
      : super(CounterState(products: <ProductInfo>[], homefilter: 'All'));

  void porductListTranding() {
    emit(
      CounterState(
          products: products.where((i) => i.isTranding).toList(),
          homefilter: 'Tranding'),
    );
  }

  void porductListAll() {
    emit(
      CounterState(products: products, homefilter: 'All'),
    );
  }

  void porductListNew() {
    emit(
      CounterState(
          products: products.where((i) => i.isNew).toList(), homefilter: 'New'),
    );
  }
}
