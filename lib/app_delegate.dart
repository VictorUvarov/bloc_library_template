import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';

class AppBlocDelegate extends BlocDelegate {
  final log = Logger('AppBlocDelegate');

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
  void onError(Bloc bloc, Object error, StackTrace stackTrace) {
    log.severe('Bloc: $bloc, Error: $error, Trace: $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}
