import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/data/datasource/remote/api/product_api.dart';
import 'package:man_module/domain/entity/product_entity.dart';
import 'package:man_module/domain/repository/product_repository.dart';

@Injectable(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final ProductApi _api;

  ProductRepositoryImpl(this._api);

  @override
  Future<Either<BaseException, List<ProductEntity>>> getProducts() async {
    try {
      final products = await _api.getProducts(request: BasePaginationRequest(page: 1));
      if (products.data != null) {
        final productEntities = products.data!
            .map((dto) => ProductEntity.fromDto(dto))
            .toList();
        return Right(productEntities);
      } else {
        return Left(BaseException.serverException());
      }
    } catch (e) {
      return Left(BaseException(message: e.toString()));
    }
  }
}