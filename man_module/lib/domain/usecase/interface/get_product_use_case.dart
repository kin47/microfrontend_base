import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/domain/entity/product_entity.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';

abstract class GetProductUseCase {
  Future<Either<BaseException, List<ProductEntity>>> call();
}