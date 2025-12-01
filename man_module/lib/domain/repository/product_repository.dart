import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/domain/entity/product_entity.dart';

abstract class ProductRepository {
  Future<Either<BaseException, List<ProductEntity>>> getProducts();
}