import 'package:flutter_base_libraries/flutter_libraries.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
abstract class ProductDto with _$ProductDto {
  ProductDto._();
  factory ProductDto({
    @JsonKey(name: 'Id') int? id,
    @JsonKey(name: 'Name') String? name,
  }) = _ProductDto;
  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}