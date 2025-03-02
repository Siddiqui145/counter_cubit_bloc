import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super (0); //created a constructor in order to be able to pass initial state

  void increment() {
  emit(state+1);
}

}

