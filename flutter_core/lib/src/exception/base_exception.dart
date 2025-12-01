import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_exception.freezed.dart';
part 'base_exception.g.dart';

@freezed
abstract class BaseException with _$BaseException implements Exception {
  const BaseException._();

  const factory BaseException({@Default('') String message}) = _BaseDefaultException;

  const factory BaseException.serverException({
    @Default('') String message,
    @Default(-1) int statusCode,
    @Default('') String errorCode,
    @Default('') String errorType,
  }) = ServerException;

  const factory BaseException.noInternetException({@Default('') String message}) =
  NoInternetException;

  const factory BaseException.forceLogoutException(
      {@Default('') String message}) = ForceLogoutException;

  const factory BaseException.forceUpgradeApplication(
      {@Default('') String message}) = ForceUpgradeApplication;

  factory BaseException.fromJson(Map<String, dynamic> json) =>
      _$BaseExceptionFromJson(json);
}
