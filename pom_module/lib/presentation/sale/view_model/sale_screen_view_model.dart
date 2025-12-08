import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:pom_module/domain/entity/sale_item_entity.dart';

part 'sale_screen_view_model.freezed.dart';

@freezed
abstract class SaleScreenViewModel with _$SaleScreenViewModel {
  const SaleScreenViewModel._();

  const factory SaleScreenViewModel({
    @Default([]) List<SaleItemEntity> items,
    @Default('') String searchQuery,
    @Default(false) bool isSearching,
  }) = _SaleScreenViewModel;
}

