import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class RoutesBloc extends BlocBase {
  BehaviorSubject<int> _page = BehaviorSubject.seeded(0);

  Observable<int> get indexOut => _page.stream;

  mudarPagina(int value) {
    _page.value = value;
    _page.add(_page.value);
  }

  @override
  void dispose() {
    _page.close();
    super.dispose();
  }
}
