import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_counter_app/Blocs/Counter/Bloc.dart';
import 'package:my_counter_app/UI/Home.dart';

///Primary Material Application
class MyApp extends StatelessWidget {
  ///Constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CounterBloc>(create: (BuildContext context) => CounterBloc()),

          /// BlocProvider<AuthBloc>(create: (BuildContext context) => AuthBloc()),
          ///...Other blocs
        ],
        child: const Homepage(),
      ),
    );
  }
}
