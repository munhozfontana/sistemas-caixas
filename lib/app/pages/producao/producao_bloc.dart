import 'package:bloc/bloc.dart';

enum ProducaoEvent { increment, decrement }

class ProducaoBloc extends Bloc<ProducaoEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(ProducaoEvent event) async* {
    switch (event) {
      case ProducaoEvent.decrement:
        yield state - 1;
        break;
      case ProducaoEvent.increment:
        yield state + 1;
        break;
    }
  }
}
