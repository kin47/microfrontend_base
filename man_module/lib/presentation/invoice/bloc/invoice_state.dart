part of 'invoice_bloc.dart';

@freezed
abstract class InvoiceState with _$InvoiceState {
  const InvoiceState._();

  const factory InvoiceState.primary({
    @Default(InvoiceScreenViewModel()) InvoiceScreenViewModel viewModel,
  }) = _InvoiceStatePrimary;

  const factory InvoiceState.loading({
    @Default(InvoiceScreenViewModel()) InvoiceScreenViewModel viewModel,
  }) = _InvoiceStateLoading;

  const factory InvoiceState.error({
    @Default(InvoiceScreenViewModel()) InvoiceScreenViewModel viewModel,
    @Default(BaseException()) BaseException exception,
  }) = _InvoiceStateError;
}

