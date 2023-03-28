import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(const CounterInitial(initialValue: 20));

  void increase() {
    emit(MyCounterState(counterValue: state.counter + 1));
  }

  void decrease() {
    emit(MyCounterState(counterValue: state.counter - 1));
  }
}
