import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:pom_module/domain/entity/sale_item_entity.dart';

@injectable
class SaleStore {
  // Mock local storage for sale items
  static final List<SaleItemEntity> _mockItems = [
    const SaleItemEntity(
      id: 1,
      name: 'Product A',
      description: 'Description for Product A',
      price: 29.99,
      quantity: 10,
    ),
    const SaleItemEntity(
      id: 2,
      name: 'Product B',
      description: 'Description for Product B',
      price: 39.99,
      quantity: 5,
    ),
    const SaleItemEntity(
      id: 3,
      name: 'Product C',
      description: 'Description for Product C',
      price: 19.99,
      quantity: 15,
    ),
    const SaleItemEntity(
      id: 4,
      name: 'Product D',
      description: 'Description for Product D',
      price: 49.99,
      quantity: 8,
    ),
    const SaleItemEntity(
      id: 5,
      name: 'Product E',
      description: 'Description for Product E',
      price: 59.99,
      quantity: 12,
    ),
  ];

  Future<List<SaleItemEntity>> getSaleItems({String? searchQuery}) async {
    await Future.delayed(const Duration(milliseconds: 500)); // Simulate network delay
    
    if (searchQuery == null || searchQuery.isEmpty) {
      return _mockItems;
    }
    
    final query = searchQuery.toLowerCase();
    return _mockItems.where((item) {
      return item.name.toLowerCase().contains(query) ||
          item.description.toLowerCase().contains(query);
    }).toList();
  }
}

