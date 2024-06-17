part of './Bloc.dart';

///Basec class to trigger events to manage count
abstract class CounterEvent {
  ///To make the event more readable in debugging console

  @override
  String toString();
}

class IncreaseEvent extends CounterEvent {
  @override
  String toString() {
    return 'To increase the number by 1';
  }
}

class DecreaseEvent extends CounterEvent {
  @override
  String toString() {
    return 'To decrease the number by 1';
  }
}
