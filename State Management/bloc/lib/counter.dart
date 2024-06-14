import 'package:flutter_bloc/flutter_bloc.dart';
class CounterCubit extends Cubit<int>{
  CounterCubit():super(0);
  plus()
  {
    emit(state+1);
  }
}