import 'package:flutter/material.dart';
import 'package:flutter_base_application/di/di.dart';
import 'package:flutter_base_application/domain/entity/bottom_nav_bar_item_entity.dart';
import 'package:flutter_base_application/domain/enum/core_tab.dart';
import 'package:flutter_base_application/presentation/custom_bottom_navigation_bar.dart';
import 'package:flutter_base_application/presentation/screen/host/cubit/host_cubit.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:man_module/presentation/invoice/screen/invoice_screen.dart';
import 'package:man_module/presentation/more/screen/more_screen.dart';
import 'package:man_module/presentation/product/screen/product_screen.dart';
import 'package:pom_module/presentation/sale/screen/sale_screen.dart';
import 'package:ui_design_system/theme/app_colors.dart';

class HostScreen extends StatefulWidget {
  const HostScreen({super.key});

  @override
  State<HostScreen> createState() => _HostScreenState();
}

class _HostScreenState extends State<HostScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HostCubit>(),
      child: Scaffold(
        body: BlocBuilder<HostCubit, HostState>(
          buildWhen: (previous, current) =>
              previous.viewModel.currentTab != current.viewModel.currentTab,
          builder: (context, state) {
            final currentTab = state.viewModel.currentTab;
            return _buildScreenForTab(currentTab);
          },
        ),
        bottomNavigationBar: BlocBuilder<HostCubit, HostState>(
          buildWhen: (previous, current) =>
              previous.viewModel.currentTab != current.viewModel.currentTab,
          builder: (context, state) {
            final currentTab = state.viewModel.currentTab;

            return CustomBottomNavigationBar(
              backgroundColor: AppColors.white,
              onClickBottomBar: (BottomNavBarItemEntity item) {
                context.read<HostCubit>().onChangeTab(item.type);
              },
              activeTab: currentTab,
              items: CoreTab.values.map((tab) {
                return BottomNavBarItemEntity(
                  type: tab,
                  isSelected: tab == currentTab,
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildScreenForTab(CoreTab tab) {
    switch (tab) {
      case CoreTab.home:
        // Dashboard - implement later
        return const SizedBox.shrink();
      case CoreTab.products:
        // ProductScreen from man_module
        return const ProductScreen();
      case CoreTab.sale:
        // SaleScreen from pom_module
        return const SaleScreen();
      case CoreTab.invoice:
        // InvoiceScreen from man_module
        return const InvoiceScreen();
      case CoreTab.more:
        // MoreScreen from man_module
        return const MoreScreen();
    }
  }
}
