import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../sevices/bloc/Counter_bloc.dart'; // Adjust the path as per your project structure



/// Homepage widget displays a counter app interface.

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(), // Provide your CounterBloc
      child: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: BlocBuilder<CounterBloc, int>(
          builder: (context, count) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Current value: $count',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      /// to manage and display the counter state using `CounterBloc`.
                      BlocProvider.of<CounterBloc>(context).add(Increase());
                    },
                    child: Text('+'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      /// to manage and display the counter state using `CounterBloc`.
                      BlocProvider.of<CounterBloc>(context).add(Decrease());
                    },
                    child: Text('-'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
