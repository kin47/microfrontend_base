part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const ProductState._();

  const factory ProductState.primary({
    @Default(ProductScreenViewModel()) ProductScreenViewModel viewModel,
  }) = _ProductStatePrimary;

  const factory ProductState.loading({
    @Default(ProductScreenViewModel()) ProductScreenViewModel viewModel,
  }) = _ProductStateLoading;

  const factory ProductState.error({
    @Default(ProductScreenViewModel()) ProductScreenViewModel viewModel,
    @Default(BaseException()) BaseException exception,
  }) = _ProductStateError;
}
