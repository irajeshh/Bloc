// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:flutter_bloc/flutter_bloc.dart';

part './Event.dart';
part './State.dart';

/// Bloc that manages the state of a counter
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  ///Setting the initial value of this bloc as zero
  CounterBloc() : super(0) {
    on<IncreaseEvent>(onIncreaseEventFn);
    on<DecreaseEvent>(onDecreaseEventFn);
  }

  Future<void> onIncreaseEventFn(IncreaseEvent event, Emitter<int> emitter) async {
    ///Assume Fake [http] repository call
    // await Future.delayed(Durations.extralong1);
    emit(state + 1);
  }

  Future<void> onDecreaseEventFn(DecreaseEvent event, Emitter<int> emitter) async {
    ///Assume Fake [http] repository call
    // await Future.delayed(Durations.extralong1);
    emit(state - 1);
  }
}
