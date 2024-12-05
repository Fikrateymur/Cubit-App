import 'package:cubit_example/cubit/cart_cubit.dart';
import 'package:cubit_example/cubit/counter_cubit.dart';
import 'package:cubit_example/cubit/favorite_cubit.dart';
import 'package:cubit_example/cubit/popular_cubit.dart';
import 'package:cubit_example/cubit/type_cubit.dart';
import 'package:cubit_example/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()..porductListAll()),
        BlocProvider(
          create: (context) => PopularCubit()..porductList(),
        ),
        BlocProvider(
          create: (context) => TypeCubit()..porductListAll(),
        ),
        BlocProvider(
          create: (context) => FavoriteCubit(),
        ),
        BlocProvider(
          create: (context) => CartCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
