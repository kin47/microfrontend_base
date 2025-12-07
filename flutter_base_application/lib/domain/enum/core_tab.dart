import 'package:flutter/material.dart';
import 'package:flutter_base_application/generated/assets_gen/assets.gen.dart';
import 'package:flutter_base_application/generated/l10n_gen/app_localizations.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';

enum CoreTab {
  home,
  products,
  sale,
  invoice,
  more;

  String get path => name;

  String title(BuildContext context) {
    final AppLocalizations? localizations = AppLocalizations.of(context);
    return switch (this) {
      CoreTab.home => localizations?.tab_home ?? '',
      CoreTab.products => localizations?.tab_products ?? '',
      CoreTab.sale => localizations?.tab_sale ?? '',
      CoreTab.invoice => localizations?.tab_invoice ?? '',
      CoreTab.more => localizations?.tab_more ?? '',
    };
  }

  Widget icon(bool isActive) {
    switch (this) {
      case CoreTab.home:
        return (isActive ? Assets.svg.icLeafActive : Assets.svg.icLeafInactive)
            .svg(width: 28.w);
      case CoreTab.products:
        return (isActive
                ? Assets.svg.icDiagnoseActive
                : Assets.svg.icDiagnoseInactive)
            .svg(width: 28.w);
      case CoreTab.sale:
        return (isActive
                ? Assets.svg.icStoreActive
                : Assets.svg.icStoreInactive)
            .svg(width: 28.w);
      case CoreTab.invoice:
        return (isActive ? Assets.svg.icUserActive : Assets.svg.icUserInactive)
            .svg(width: 28.w);
      case CoreTab.more:
        return (isActive ? Assets.svg.icUserActive : Assets.svg.icUserInactive)
            .svg(width: 28.w);
    }
  }
}
