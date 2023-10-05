// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

abstract class CounterCubitState extends Equatable {
  const CounterCubitState();
}

class CounterInitiate extends CounterCubitState {
  @override
  List<Object?> get props => [];
}

class CounterUpdate extends CounterCubitState {
  int value = 0;
  CounterUpdate({required this.value});

  @override
  List<Object?> get props => [value];
}
