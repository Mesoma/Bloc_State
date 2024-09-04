import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  // Constructor to call super
  CounterCubit(super.initialState);

  // Method to increment state
  void increment() => emit(state + 1);

  //Method to decrement state
  void decrement() => emit(state - 1);

  // On Changed Method to alert App about state changes
  @override
  void onChange(Change<int> change) {
    super.onChange(change);

    print(change);
  }
}