import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pom_module/domain/entity/sale_item_entity.dart';

abstract class GetSaleItemsUseCase {
  Future<Either<BaseException, List<SaleItemEntity>>> call({
    String? searchQuery,
  });
}

