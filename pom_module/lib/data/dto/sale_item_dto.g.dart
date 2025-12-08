// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleItemDto _$SaleItemDtoFromJson(Map<String, dynamic> json) => _SaleItemDto(
  id: (json['Id'] as num?)?.toInt(),
  name: json['Name'] as String?,
  description: json['Description'] as String?,
  price: (json['Price'] as num?)?.toDouble(),
  quantity: (json['Quantity'] as num?)?.toInt(),
  imageUrl: json['ImageUrl'] as String?,
);

Map<String, dynamic> _$SaleItemDtoToJson(_SaleItemDto instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'Description': instance.description,
      'Price': instance.price,
      'Quantity': instance.quantity,
      'ImageUrl': instance.imageUrl,
    };
