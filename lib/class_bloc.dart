import 'package:flutter_bloc/flutter_bloc.dart';

class TestBloc extends Bloc<Conter,int>{
  TestBloc() : super(1){
    on<CountP>(_onCountP );
    on<CountM>(_onCountM );



  }


  _onCountP(CountP event, Emitter<int>emit){
    emit(state + 1);
  }

  _onCountM(CountM event, Emitter<int>emit){
    emit(state - 1);
  }
}

abstract class Conter{}
class CountP extends Conter{}
class CountM extends Conter{}