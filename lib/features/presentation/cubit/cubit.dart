import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s2/features/presentation/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of<CounterCubit>(context);

  int counter = 0;

  void decrementCounter() {
    counter--;
    debugPrint('$counter');
    emit(CounterDecrementState());
  }

  void incrementCounter() {
    counter++;
    debugPrint('$counter');
    emit(CounterIncrementState());
  }
}
