import 'package:man_module/data/dto/product_dto.dart';

class ProductEntity {
  final int id;
  final String name;

  ProductEntity({
    required this.id,
    required this.name,
  });

  factory ProductEntity.fromDto(ProductDto dto) {
    return ProductEntity(
      id: dto.id ?? 0,
      name: dto.name ?? '',
    );
  }
}