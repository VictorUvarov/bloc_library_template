part of 'home_view_bloc.dart';

@freezed
abstract class HomeViewState with _$HomeViewState {
  const factory HomeViewState.loading() = _Loading;
  const factory HomeViewState.loaded({@required User user}) = _Loaded;
  const factory HomeViewState.error() = _Error;
}
