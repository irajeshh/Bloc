
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_counter_app/sevices/bloc/Counter_bloc.dart';
import 'package:my_counter_app/ui/homepage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(/// useing bloc here
        create: (context) => CounterBloc(), /// provide your CounterBloc here
        child:Homepage(),
      ),
    );
  }
}
