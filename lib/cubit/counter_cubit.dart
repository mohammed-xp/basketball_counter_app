import 'package:bascket_ball_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {

  CounterCubit() : super(CounterInitialState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamIncrement({required String team, int? buttonNumber}) {
    if(team == 'A'){
      teamAPoints += buttonNumber!;
      emit(CounterAIncrementState());
    } else if(team == 'B'){
      teamBPoints += buttonNumber!;
      emit(CounterBIncrementState());
    } else {
      teamAPoints = 0;
      teamBPoints = 0;
      emit(CounterResetState());
    }

  }



}