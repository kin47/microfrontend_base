import 'package:pom_module/data/dto/sale_item_dto.dart';

class SaleItemEntity {
  final int id;
  final String name;
  final String description;
  final double price;
  final int quantity;
  final String? imageUrl;

  const SaleItemEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    this.imageUrl,
  });

  factory SaleItemEntity.fromDto(SaleItemDto dto) => SaleItemEntity(
    id: dto.id ?? 0,
    name: dto.name ?? '',
    description: dto.description ?? '',
    price: dto.price ?? 0,
    quantity: dto.quantity ?? 0,
    imageUrl: dto.imageUrl,
  );
}

