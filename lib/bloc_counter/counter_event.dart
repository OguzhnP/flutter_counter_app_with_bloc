part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncreaseCounterEvent extends CounterEvent {}

class DecreaseCounterEvent extends CounterEvent {}
