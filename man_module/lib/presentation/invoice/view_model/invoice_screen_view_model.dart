import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:man_module/domain/entity/invoice_entity.dart';

part 'invoice_screen_view_model.freezed.dart';

@freezed
abstract class InvoiceScreenViewModel with _$InvoiceScreenViewModel {
  const InvoiceScreenViewModel._();

  const factory InvoiceScreenViewModel({
    @Default([]) List<InvoiceEntity> invoices,
  }) = _InvoiceScreenViewModel;
}

