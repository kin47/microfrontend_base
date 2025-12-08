// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvoiceDto _$InvoiceDtoFromJson(Map<String, dynamic> json) => _InvoiceDto(
  id: (json['Id'] as num?)?.toInt(),
  invoiceNumber: json['InvoiceNumber'] as String?,
  amount: (json['Amount'] as num?)?.toDouble(),
  date: json['Date'] == null ? null : DateTime.parse(json['Date'] as String),
  status: json['Status'] as String?,
  customerName: json['CustomerName'] as String?,
);

Map<String, dynamic> _$InvoiceDtoToJson(_InvoiceDto instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'InvoiceNumber': instance.invoiceNumber,
      'Amount': instance.amount,
      'Date': instance.date?.toIso8601String(),
      'Status': instance.status,
      'CustomerName': instance.customerName,
    };
