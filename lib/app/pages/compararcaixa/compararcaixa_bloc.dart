import 'package:bloc/bloc.dart';

enum CompararCaixaEvent { increment, decrement }

class CompararCaixaBloc extends Bloc<CompararCaixaEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CompararCaixaEvent event) async* {
    switch (event) {
      case CompararCaixaEvent.decrement:
        yield state - 1;
        break;
      case CompararCaixaEvent.increment:
        yield state + 1;
        break;
    }
  }
}
