package com.example.microfrontendandroid.flutter.enums

enum class MicroFrontendFlutterRoute {
    SALE,
    RETURN,
    QUICK_RETURN,
    SOFT_POS,
    SETTINGS,
    CHANGE_PASSWORD,
    PROFILE, ORDER,
    CUSTOMER_ANALYTIC,
    PRODUCT_ANALYTIC,
    SCAN_BARCODE,
    SCAN_BARCODE_CONTINUALLY,
    UPDATE_INVOICE,
    ADVANCED_ANALYTIC,
    FLUTTER_KV_APPLICATION;

    fun getPath(): String {
        return when (this) {
            SALE -> "pom_sale/sale"
            RETURN -> "pom_sale/returns"
            QUICK_RETURN -> "pom_sale/quick_return"
            SOFT_POS -> "pom_sale/soft_pos"
            SETTINGS -> "pom_sale/settings"
            CHANGE_PASSWORD -> "pom_sale/change_password"
            PROFILE -> "pom_sale/profile"
            ORDER -> "pom_sale/order"
            SCAN_BARCODE -> "pom_sale/scan_barcode"
            SCAN_BARCODE_CONTINUALLY -> "pom_sale/barcode_scanner_continually"
            UPDATE_INVOICE -> "pom_sale/update_invoice"
            CUSTOMER_ANALYTIC -> "business_intelligence/customer_analytic"
            PRODUCT_ANALYTIC -> "business_intelligence/product_analytic"
            ADVANCED_ANALYTIC -> "business_intelligence/advanced_analytics"
            FLUTTER_KV_APPLICATION -> "/"
        }
    }

    /**
     * Resolve entry point which function execute code dart
     *
     * Equivalent main() dart function
     */
    fun getEntryPoint(): String {
        return when (this) {
            SALE, RETURN, QUICK_RETURN, SOFT_POS, SETTINGS, CHANGE_PASSWORD, PROFILE, ORDER, CUSTOMER_ANALYTIC, PRODUCT_ANALYTIC, SCAN_BARCODE, SCAN_BARCODE_CONTINUALLY, UPDATE_INVOICE, ADVANCED_ANALYTIC, FLUTTER_KV_APPLICATION -> "main" }
    }

    fun getLibraryURI(): String {
        return when (this) {
            SALE, RETURN, QUICK_RETURN, SOFT_POS, SETTINGS, CHANGE_PASSWORD, PROFILE, ORDER, SCAN_BARCODE, SCAN_BARCODE_CONTINUALLY, UPDATE_INVOICE -> "package:pos_on_man/main.dart"
            CUSTOMER_ANALYTIC, PRODUCT_ANALYTIC, ADVANCED_ANALYTIC -> "package:business_intelligence/main.dart"
            FLUTTER_KV_APPLICATION -> "package:flutter_kv_application/main.dart"
        }
    }
}