part of 'counter_cubit.dart';

class CounterState {
  List<ProductInfo> products = [];
  // var homefilter = homeFilter;
  String homefilter = 'All';

  CounterState({
    required this.products,
    required this.homefilter,
  });
}
