import 'package:flutter/material.dart';
import 'package:flutter_base_application/domain/entity/bottom_nav_bar_item_entity.dart';
import 'package:flutter_base_application/domain/enum/core_tab.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:ui_design_system/ui_design_system.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final CoreTab activeTab;
  final List<BottomNavBarItemEntity> items;
  final Color? backgroundColor;
  final Function(
    BottomNavBarItemEntity item,
  ) onClickBottomBar;

  const CustomBottomNavigationBar({
    super.key,
    required this.items,
    this.backgroundColor,
    required this.onClickBottomBar,
    required this.activeTab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      width: 1.sw,
      height: 90.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items
            .map(
              (e) => Expanded(
                child: ItemBottomNavigation(
                  isActive: e.type == activeTab,
                  item: e,
                  onPressed: () {
                    onClickBottomBar(e);
                  },
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class ItemBottomNavigation extends StatelessWidget {
  final BottomNavBarItemEntity item;
  final Function() onPressed;
  final bool isActive;

  const ItemBottomNavigation({
    super.key,
    required this.item,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.only(
          top: 10.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            isActive ? item.type.activeIcon : item.type.icon,
            SizedBox(
              height: 8.h,
            ),
            Expanded(
              child: Text(
                item.type.title(context),
                textAlign: TextAlign.center,
                style: AppTextStyles.s12w400.copyWith(
                  color: isActive ? AppColors.primary500 : AppColors.gray200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
