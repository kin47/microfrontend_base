import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/domain/entity/invoice_entity.dart';
import 'package:man_module/domain/repository/invoice_repository.dart';
import 'package:man_module/domain/usecase/interface/get_invoice_use_case.dart';

@Injectable(as: GetInvoiceUseCase)
class GetInvoiceUseCaseImpl implements GetInvoiceUseCase {
  final InvoiceRepository _invoiceRepository;

  GetInvoiceUseCaseImpl(this._invoiceRepository);

  @override
  Future<Either<BaseException, List<InvoiceEntity>>> call() {
    return _invoiceRepository.getInvoices();
  }
}

