part of 'counter_cubit.dart';

@immutable
abstract class CounterCubitState {
  final int counter;

  const CounterCubitState({required this.counter});
}

class CounterInitial extends CounterCubitState {
  const CounterInitial({required int initialValue})
      : super(counter: initialValue);
}

class MyCounterState extends CounterCubitState {
  MyCounterState({required int counterValue}) : super(counter: counterValue);
}
