import 'package:flutter_base_application/domain/enum/core_tab.dart';

class BottomNavBarItemEntity {
  final CoreTab type;
  final bool isSelected;

  const BottomNavBarItemEntity({
    required this.type,
    required this.isSelected,
  });
}
