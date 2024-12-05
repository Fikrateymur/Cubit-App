import 'package:bloc/bloc.dart';
import 'package:cubit_example/data/mock_data.dart';
import 'package:cubit_example/data/product_info.dart';

part 'popular_state.dart';

class PopularCubit extends Cubit<PopularState> {
  PopularCubit()
      : super(
          PopularState(products: <ProductInfo>[]),
        );

  void porductList() {
    emit(
      PopularState(
        products: products.where((i) => i.isPopular).toList(),
      ),
    );
  }
}
