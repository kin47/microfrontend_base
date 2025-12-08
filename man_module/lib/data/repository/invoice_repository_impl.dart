import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/data/datasource/remote/api/invoice_api.dart';
import 'package:man_module/domain/entity/invoice_entity.dart';
import 'package:man_module/domain/repository/invoice_repository.dart';

@Injectable(as: InvoiceRepository)
class InvoiceRepositoryImpl implements InvoiceRepository {
  final InvoiceApi _api;

  InvoiceRepositoryImpl(this._api);

  @override
  Future<Either<BaseException, List<InvoiceEntity>>> getInvoices() async {
    try {
      final invoices = await _api.getInvoices(request: BasePaginationRequest(page: 1));
      if (invoices.data != null) {
        final invoiceEntities = invoices.data!
            .map((dto) => InvoiceEntity.fromDto(dto))
            .toList();
        return Right(invoiceEntities);
      } else {
        return Left(BaseException.serverException());
      }
    } catch (e) {
      return Left(BaseException(message: e.toString()));
    }
  }

  @override
  Future<Either<BaseException, InvoiceEntity>> getInvoiceById(int id) async {
    try {
      final invoice = await _api.getInvoiceById(id: id);
      if (invoice.data != null) {
        final invoiceEntity = InvoiceEntity.fromDto(invoice.data!);
        return Right(invoiceEntity);
      } else {
        return Left(BaseException.serverException());
      }
    } catch (e) {
      return Left(BaseException(message: e.toString()));
    }
  }
}

