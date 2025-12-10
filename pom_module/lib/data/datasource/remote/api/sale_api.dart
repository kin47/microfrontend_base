import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:pom_module/data/dto/sale_item_dto.dart';

part 'sale_api.g.dart';

@RestApi()
abstract class SaleApi {
  factory SaleApi(Dio dio, {String baseUrl}) = _SaleApi;

  @GET('/sale-items')
  Future<List<SaleItemDto>> getSaleItems({
    @Query('search') String? searchQuery,
  });
}

