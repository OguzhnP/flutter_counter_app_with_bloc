import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(initialValue: 50)) {
    on<IncreaseCounterEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter + 1));
    });
    on<DecreaseCounterEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter - 1));
    });
  }
}
