import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/domain/entity/invoice_entity.dart';

abstract class InvoiceRepository {
  Future<Either<BaseException, List<InvoiceEntity>>> getInvoices();
  Future<Either<BaseException, InvoiceEntity>> getInvoiceById(int id);
}

