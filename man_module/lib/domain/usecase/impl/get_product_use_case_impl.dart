import 'package:dartz/dartz.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/domain/entity/product_entity.dart';
import 'package:man_module/domain/repository/product_repository.dart';
import 'package:man_module/domain/usecase/interface/get_product_use_case.dart';

@Injectable(as: GetProductUseCase)
class GetProductUseCaseImpl implements GetProductUseCase {
  final ProductRepository _productRepository;

  GetProductUseCaseImpl(this._productRepository);

  @override
  Future<Either<BaseException, List<ProductEntity>>> call() {
    return _productRepository.getProducts();
  }
}