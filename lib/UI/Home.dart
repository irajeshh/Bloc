// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_counter_app/Blocs/Counter/Bloc.dart';
import 'package:my_counter_app/UI/Drawer.dart';

/// Homepage widget displays a counter app interface.
class Homepage extends StatefulWidget {
  ///Constructor
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
      drawer: const DrawerPage(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text("Counter Manager"),
    );
  }

  Widget body() {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        final bool swap = state.isEven;
        double size = swap ? 400 : 300;
        BorderRadius borderRadius = BorderRadius.circular(swap ? 360 : 8);
        BoxDecoration boxDecoration() {
          return BoxDecoration(
            color: swap ? Colors.blueGrey : Colors.blue,
            borderRadius: borderRadius,
          );
        }

        Text text() {
          return Text(
            state.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: swap ? 50 : 25,
            ),
          );
        }

        return Center(
          child: Container(
            alignment: Alignment.center,
            height: double.maxFinite,
            width: double.maxFinite,
            child: AnimatedContainer(
              alignment: Alignment.center,
              height: size,
              width: size,
              padding: const EdgeInsets.all(50),
              decoration: boxDecoration(),
              duration: const Duration(seconds: 1),
              child: text(),
            ),
          ),
        );
      },
    );
  }
}
