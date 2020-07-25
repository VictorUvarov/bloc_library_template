import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';

class AppBlocObserver extends BlocObserver {
  final log = Logger('');

  @override
  void onEvent(Bloc bloc, Object event) {
    log.fine('Bloc: $bloc, Event: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log.finest('Bloc: $bloc, Transition: $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    log.severe('Cubit: $cubit, Error: $error, Trace: $stackTrace');
    super.onError(cubit, error, stackTrace);
  }
}
