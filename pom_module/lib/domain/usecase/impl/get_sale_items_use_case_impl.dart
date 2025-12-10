import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pom_module/domain/entity/sale_item_entity.dart';
import 'package:pom_module/domain/repository/sale_repository.dart';
import 'package:pom_module/domain/usecase/interface/get_sale_items_use_case.dart';

@Injectable(as: GetSaleItemsUseCase)
class GetSaleItemsUseCaseImpl implements GetSaleItemsUseCase {
  final SaleRepository _saleRepository;

  GetSaleItemsUseCaseImpl(this._saleRepository);

  @override
  Future<Either<BaseException, List<SaleItemEntity>>> call({
    String? searchQuery,
  }) async {
    return await _saleRepository.getSaleItems(searchQuery: searchQuery);
  }
}

