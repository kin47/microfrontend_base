import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/data/constants/endpoint_constants.dart';
import 'package:man_module/data/dto/product_dto.dart';

part 'product_api.g.dart';

@RestApi()
@Injectable()
abstract class ProductApi {
  @factoryMethod
  factory ProductApi(Dio dio) = _ProductApi;

  @GET(EndpointConstants.products)
  Future<BaseListData<ProductDto>> getProducts({
    @Queries() required BasePaginationRequest request,
  });
}
