part of 'host_cubit.dart';

@freezed
abstract class HostState with _$HostState {
  const HostState._();
  const factory HostState.primary({
    @Default(HostScreenViewModel()) HostScreenViewModel viewModel,
  }) = _HostStateInitial;
  const factory HostState.loading({
    @Default(HostScreenViewModel()) HostScreenViewModel viewModel,
  }) = _HostStateLoading;
  const factory HostState.error({
    @Default(HostScreenViewModel()) HostScreenViewModel viewModel,
    @Default(BaseException()) BaseException exception,
  }) = _HostStateError;
  const factory HostState.loggedOut({
    @Default(HostScreenViewModel()) HostScreenViewModel viewModel,
  }) = _HostStateLoggedOut;
}
