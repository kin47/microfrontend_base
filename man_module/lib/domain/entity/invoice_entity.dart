import 'package:man_module/data/dto/invoice_dto.dart';

class InvoiceEntity {
  final int id;
  final String invoiceNumber;
  final double amount;
  final DateTime date;
  final String status;
  final String? customerName;

  InvoiceEntity({
    required this.id,
    required this.invoiceNumber,
    required this.amount,
    required this.date,
    required this.status,
    this.customerName,
  });

  factory InvoiceEntity.fromDto(InvoiceDto dto) {
    return InvoiceEntity(
      id: dto.id ?? 0,
      invoiceNumber: dto.invoiceNumber ?? '',
      amount: dto.amount ?? 0.0,
      date: dto.date ?? DateTime.now(),
      status: dto.status ?? '',
      customerName: dto.customerName,
    );
  }
}

