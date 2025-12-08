import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:man_module/domain/usecase/interface/get_invoice_use_case.dart';
import 'package:man_module/presentation/invoice/view_model/invoice_screen_view_model.dart';

part 'invoice_event.dart';
part 'invoice_state.dart';
part 'invoice_bloc.freezed.dart';

@injectable
class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  final GetInvoiceUseCase _getInvoiceUseCase;

  InvoiceBloc(this._getInvoiceUseCase) : super(const InvoiceState.primary()) {
    on<_Started>((event, emit) {
      // Initial state
    });
    on<_FetchInvoices>((event, emit) => _onFetchInvoices(event, emit));
  }

  Future<void> _onFetchInvoices(
      _FetchInvoices event, Emitter<InvoiceState> emit) async {
    emit(InvoiceState.loading(viewModel: state.viewModel));
    final result = await _getInvoiceUseCase.call();
    result.fold(
      (exception) {
        emit(InvoiceState.error(
            viewModel: state.viewModel, exception: exception));
      },
      (invoices) {
        final updatedViewModel =
            state.viewModel.copyWith(invoices: invoices);
        emit(InvoiceState.primary(viewModel: updatedViewModel));
      },
    );
  }
}

