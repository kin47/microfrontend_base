import 'package:flutter_base_libraries/flutter_libraries.dart';

part 'invoice_dto.freezed.dart';
part 'invoice_dto.g.dart';

@freezed
abstract class InvoiceDto with _$InvoiceDto {
  InvoiceDto._();
  factory InvoiceDto({
    @JsonKey(name: 'Id') int? id,
    @JsonKey(name: 'InvoiceNumber') String? invoiceNumber,
    @JsonKey(name: 'Amount') double? amount,
    @JsonKey(name: 'Date') DateTime? date,
    @JsonKey(name: 'Status') String? status,
    @JsonKey(name: 'CustomerName') String? customerName,
  }) = _InvoiceDto;
  factory InvoiceDto.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDtoFromJson(json);
}

