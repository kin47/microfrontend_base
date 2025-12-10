import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pom_module/data/datasource/local/sale_store.dart';
import 'package:pom_module/domain/entity/sale_item_entity.dart';
import 'package:pom_module/domain/repository/sale_repository.dart';

@Injectable(as: SaleRepository)
class SaleRepositoryImpl implements SaleRepository {
  final SaleStore _saleStore;

  SaleRepositoryImpl(this._saleStore);

  @override
  Future<Either<BaseException, List<SaleItemEntity>>> getSaleItems({
    String? searchQuery,
  }) async {
    try {
      final items = await _saleStore.getSaleItems(searchQuery: searchQuery);
      return Right(items);
    } catch (e) {
      return Left(BaseException(message: e.toString()));
    }
  }
}

