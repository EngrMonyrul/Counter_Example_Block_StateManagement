import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled16/control/cubit_example/counter_screen_cubit/counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  int value = 0;
  CounterCubit() : super(CounterInitiate());

  void counterIncrease() {
    value++;
    emit(CounterUpdate(value: value));
  }

  void counterDecrease() {
    value--;
    emit(CounterUpdate(value: value));
  }
}
