import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:man_module/domain/entity/product_entity.dart';

part 'product_screen_view_model.freezed.dart';

@freezed
abstract class ProductScreenViewModel with _$ProductScreenViewModel {
  const ProductScreenViewModel._();

  const factory ProductScreenViewModel({
    @Default([]) List<ProductEntity> products,
  }) = _ProductScreenViewModel;
}