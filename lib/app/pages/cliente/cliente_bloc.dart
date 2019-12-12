import 'package:bloc/bloc.dart';

enum ClienteEvent { increment, decrement }

class ClienteBloc extends Bloc<ClienteEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(ClienteEvent event) async* {
    switch (event) {
      case ClienteEvent.decrement:
        yield state - 1;
        break;
      case ClienteEvent.increment:
        yield state + 1;
        break;
    }
  }
}
