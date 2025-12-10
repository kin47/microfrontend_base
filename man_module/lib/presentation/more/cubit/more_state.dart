part of 'more_cubit.dart';

@freezed
abstract class MoreState with _$MoreState {
  const MoreState._();

  const factory MoreState.primary({
    @Default(MoreViewModel()) MoreViewModel viewModel,
  }) = _MoreStateInitial;

  const factory MoreState.loading({
    @Default(MoreViewModel()) MoreViewModel viewModel,
  }) = _MoreStateLoading;

  const factory MoreState.error({
    @Default(MoreViewModel()) MoreViewModel viewModel,
    @Default(BaseException()) BaseException exception,
  }) = _MoreStateError;

  const factory MoreState.loggedOut({
    @Default(MoreViewModel()) MoreViewModel viewModel,
  }) = _MoreStateLoggedOut;
}
