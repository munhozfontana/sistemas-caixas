import 'package:bloc/bloc.dart';

enum AproveitamentoEvent { increment, decrement }

class AproveitamentoBloc extends Bloc<AproveitamentoEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(AproveitamentoEvent event) async* {
    switch (event) {
      case AproveitamentoEvent.decrement:
        yield state - 1;
        break;
      case AproveitamentoEvent.increment:
        yield state + 1;
        break;
    }
  }
}
