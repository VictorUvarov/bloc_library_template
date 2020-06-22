import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_exception.freezed.dart';

@freezed
abstract class RepositoryException
    with _$RepositoryException
    implements Exception {
  const factory RepositoryException.general() = _General;
  const factory RepositoryException.serverError() = _ServerError;
}
