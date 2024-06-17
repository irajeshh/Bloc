import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_counter_app/Blocs/Counter/Bloc.dart';

///Simple drawer which has no direct connection with [body] of the [HomePage]
class DrawerPage extends StatefulWidget {
  ///Constructor
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  late CounterBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<CounterBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            button(false),
            button(true),
          ],
        ),
      ),
    );
  }

  Widget button(bool toIncrease) {
    return IconButton(
      tooltip: toIncrease ? 'Increase' : 'Decrease',
      icon: Icon(toIncrease ? Icons.add : Icons.remove_circle),
      onPressed: () {
        if (toIncrease) {
          bloc.add(IncreaseEvent());
        } else {
          bloc.add(DecreaseEvent());
        }
      },
    );
  }
}
