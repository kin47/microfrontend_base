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

  Widget get icon {
    switch (this) {
      case CoreTab.home:
        return Assets.images.icDashboard.image(width: 28.w);
      case CoreTab.products:
        return Assets.images.icProduct.image(width: 28.w);
      case CoreTab.sale:
        return Assets.images.icSale.image(width: 28.w);
      case CoreTab.invoice:
        return Assets.images.icInvoice.image(width: 28.w);
      case CoreTab.more:
        return Assets.images.icMore.image(width: 28.w);
    }
  }

  Widget get activeIcon {
    switch (this) {
      case CoreTab.home:
        return Assets.images.icDashboardActive.image(width: 28.w);
      case CoreTab.products:
        return Assets.images.icProductActive.image(width: 28.w);
      case CoreTab.sale:
        return Assets.images.icSaleActive.image(width: 28.w);
      case CoreTab.invoice:
        return Assets.images.icInvoiceActive.image(width: 28.w);
      case CoreTab.more:
        return Assets.images.icMoreActive.image(width: 28.w);
    }
  }
}
