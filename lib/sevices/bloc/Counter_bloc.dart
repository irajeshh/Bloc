import 'package:flutter_bloc/flutter_bloc.dart';

// Define the events
abstract class CounterEvent {}/// Abstract class representing events for manipulating the counter

class Increase extends CounterEvent {} /// Event for increment

class Decrease extends CounterEvent {} /// Event for  decrement


/// Bloc that manages the state of a counter.
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    /// Initializes the counter bloc with an initial state of 0. CounterBloc() : super(0) {
    on<Increase>((event, emit) {
      emit(state + 1);
    });

    on<Decrease>((event, emit) {
      emit(state - 1);
    });
  }
}
