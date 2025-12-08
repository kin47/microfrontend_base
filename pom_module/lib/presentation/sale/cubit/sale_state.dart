part of 'sale_cubit.dart';

@freezed
abstract class SaleState with _$SaleState {
  const SaleState._();

  const factory SaleState.initial({
    @Default(SaleScreenViewModel()) SaleScreenViewModel viewModel,
  }) = _SaleStateInitial;

  const factory SaleState.loading({
    @Default(SaleScreenViewModel()) SaleScreenViewModel viewModel,
  }) = _SaleStateLoading;

  const factory SaleState.loaded({
    @Default(SaleScreenViewModel()) SaleScreenViewModel viewModel,
  }) = _SaleStateLoaded;

  const factory SaleState.error({
    @Default(SaleScreenViewModel()) SaleScreenViewModel viewModel,
    @Default(BaseException()) BaseException exception,
  }) = _SaleStateError;
}

