import 'package:flutter/material.dart';
import 'package:flutter_base_application/domain/enum/core_tab.dart';
import 'package:ui_design_system/text_style/app_text_styles.dart';

class HostScreen extends StatefulWidget {
  const HostScreen({super.key});

  @override
  State<HostScreen> createState() => _HostScreenState();
}

class _HostScreenState extends State<HostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Host Screen',
          style: AppTextStyles.s16w600,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: CoreTab.values.map((tab) {
        return BottomNavigationBarItem(
          icon: tab.icon(false),
          activeIcon: tab.icon(true),
          label: tab.title(context),
        );
      }).toList()),
    );
  }
}
