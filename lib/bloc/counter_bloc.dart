import 'package:flutter_bloc/flutter_bloc.dart';


class CounterEvent{}
class CounterIncremented extends CounterEvent{
  
}
class CounterDecremented extends CounterEvent{}


class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super (0) {
    on <CounterIncremented> ((event, emit) {
      emit(state+1);
    });

    on <CounterDecremented> ((event, emit) {
      if (state == 0) {
        return;
      }
      else {
        emit(state-1);
      }
    });
  }
}