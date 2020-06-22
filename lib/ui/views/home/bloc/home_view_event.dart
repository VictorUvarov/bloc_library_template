part of 'home_view_bloc.dart';

@freezed
abstract class HomeViewEvent with _$HomeViewEvent {
  const factory HomeViewEvent.loadUser() = _LoadUser;
  const factory HomeViewEvent.reloadUser() = _ReloadUser;
}
