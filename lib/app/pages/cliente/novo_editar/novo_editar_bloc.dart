import 'package:bloc/bloc.dart';

enum NovoEditarEvent { increment, decrement }

class NovoEditarBloc extends Bloc<NovoEditarEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(NovoEditarEvent event) async* {
    switch (event) {
      case NovoEditarEvent.decrement:
        yield state - 1;
        break;
      case NovoEditarEvent.increment:
        yield state + 1;
        break;
    }
  }
}
