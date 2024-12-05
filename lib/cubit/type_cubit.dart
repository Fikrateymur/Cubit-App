import 'package:bloc/bloc.dart';
import 'package:cubit_example/data/mock_data.dart';
import 'package:cubit_example/data/product_info.dart';

part 'type_state.dart';

class TypeCubit extends Cubit<TypeState> {
  TypeCubit()
      : super(
          TypeState(products: <ProductInfo>[], categoryfilter: 'All'),
        );

  void porductListBoys() {
    emit(
      TypeState(
          products: products.where((i) => i.isTranding).toList(),
          categoryfilter: 'Boys'),
    );
  }

  void porductListAll() {
    emit(
      TypeState(products: products, categoryfilter: 'All'),
    );
  }

  void porductListGirls() {
    emit(
      TypeState(
          products: products.where((i) => i.type == 'Girls').toList(),
          categoryfilter: 'Girls'),
    );
  }

  void porductListKids() {
    emit(
      TypeState(
          products: products.where((i) => i.type == 'Kids').toList(),
          categoryfilter: 'Kids'),
    );
  }
}
