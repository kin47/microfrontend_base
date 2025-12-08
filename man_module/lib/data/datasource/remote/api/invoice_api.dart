import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/data/constants/endpoint_constants.dart';
import 'package:man_module/data/dto/invoice_dto.dart';

part 'invoice_api.g.dart';

@RestApi()
@Injectable()
abstract class InvoiceApi {
  @factoryMethod
  factory InvoiceApi(Dio dio) = _InvoiceApi;

  @GET(EndpointConstants.invoices)
  Future<BaseListData<InvoiceDto>> getInvoices({
    @Queries() required BasePaginationRequest request,
  });

  @GET('${EndpointConstants.invoices}/{id}')
  Future<BaseData<InvoiceDto>> getInvoiceById({
    @Path('id') required int id,
  });
}

