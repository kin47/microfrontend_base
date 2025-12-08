import 'package:flutter_base_libraries/flutter_libraries.dart';

part 'sale_item_dto.freezed.dart';
part 'sale_item_dto.g.dart';

@freezed
abstract class SaleItemDto with _$SaleItemDto {
  SaleItemDto._();
  factory SaleItemDto({
    @JsonKey(name: 'Id') int? id,
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'Price') double? price,
    @JsonKey(name: 'Quantity') int? quantity,
    @JsonKey(name: 'ImageUrl') String? imageUrl,
  }) = _SaleItemDto;

  factory SaleItemDto.fromJson(Map<String, dynamic> json) =>
      _$SaleItemDtoFromJson(json);
}

