import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider_immutable_state/core/models/user/user.dart';

part 'home_view_state.freezed.dart';

@freezed
abstract class HomeViewState with _$HomeViewState {
  const factory HomeViewState.loading() = _Loading;
  const factory HomeViewState.loaded({
    @required User user,
    @required int count,
  }) = _Loaded;
  const factory HomeViewState.error(String message) = _Error;
}
