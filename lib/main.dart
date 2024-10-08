import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/bloc/advanced/advanced_bloc.dart';
import 'package:flutter_bloc_cubit/bloc/basic/counter_cubit.dart';
import 'package:flutter_bloc_cubit/bloc/simple/simple_cubit.dart';
import 'package:flutter_bloc_cubit/bloc/standard/standard_cubit.dart';

import 'package:flutter_bloc_cubit/pages/ant_screen.dart';
import 'package:flutter_bloc_cubit/pages/bee_screen.dart';
import 'package:flutter_bloc_cubit/pages/cat_screen.dart';
import 'package:flutter_bloc_cubit/pages/dolphin_screen.dart';
import 'package:flutter_bloc_cubit/pages/home_screen.dart';
import 'package:flutter_bloc_cubit/pages/page_not_found_screen.dart';
import 'package:flutter_bloc_cubit/pages/shopping_screen.dart';
import 'package:flutter_bloc_cubit/route_name.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => CounterCubit()),
    BlocProvider(create: (context) => SimpleCubit()),
    BlocProvider(create: (context) => StandardCubit()),
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        RouteName.home: (_) => const HomeScreen(),
        RouteName.ant: (_) => const AntScreen(), //*  basic cubit
        RouteName.bee: (_) => const BeeScreen(), //*  simple cubit
        RouteName.cat: (_) => const CatScreen(), //*  standard cubit
        // RouteName.dophin: (_) => const DolphinScreen(), //* Advanced bloc
        // RouteName.shopping: (_) => const ShoppingScreen(), //* Cart Bloc
      },
      initialRoute: RouteName.home,
      onGenerateRoute: (settings) {
        MaterialPageRoute pageRoute;
        switch (settings.name) {
          case RouteName.dophin:
            pageRoute = MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) => AdvancedBloc(),
                child: const DolphinScreen(),
              ),
            );
            break;
          case RouteName.shopping:
            pageRoute = MaterialPageRoute(
              builder: (context) => const ShoppingScreen(),
            );
            break;
          case RouteName.pageNotFound:
          default:
            pageRoute = MaterialPageRoute(
              builder: (context) => const PageNotFoundScreen(),
            );
        }

        return pageRoute;
      },
    );
  }
}
