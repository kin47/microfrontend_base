import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:man_module/di/di.dart';
import 'package:man_module/presentation/invoice/bloc/invoice_bloc.dart';
import 'package:ui_design_system/screen_util/ds_screen_util.dart';

class InvoiceScreen extends StatefulWidget {
  @Preview(
      name: 'Invoice Screen',
      size: DSScreenUtil.screenSize,
      brightness: Brightness.light)
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  final InvoiceBloc _invoiceBloc = getIt<InvoiceBloc>();

  @override
  void initState() {
    super.initState();
    // _invoiceBloc.add(const InvoiceEvent.started());
    // _invoiceBloc.add(const InvoiceEvent.fetchInvoices());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<InvoiceBloc>(
      create: (context) => _invoiceBloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Invoices'),
        ),
        body: BlocBuilder<InvoiceBloc, InvoiceState>(
          builder: (context, state) {
            return state.when(
              primary: (viewModel) {
                if (viewModel.invoices.isEmpty) {
                  return const Center(
                    child: Text('No invoices found'),
                  );
                }
                return ListView.builder(
                  itemCount: viewModel.invoices.length,
                  padding: const EdgeInsets.all(16),
                  itemBuilder: (context, index) {
                    final invoice = viewModel.invoices[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(16),
                        title: Text(
                          invoice.invoiceNumber,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            if (invoice.customerName != null)
                              Text('Customer: ${invoice.customerName}'),
                            Text(
                              'Date: ${invoice.date.year}-${invoice.date.month.toString().padLeft(2, '0')}-${invoice.date.day.toString().padLeft(2, '0')}',
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Amount: \$${invoice.amount.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        trailing: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: _getStatusColor(invoice.status),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            invoice.status.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        isThreeLine: true,
                      ),
                    );
                  },
                );
              },
              loading: (viewModel) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              error: (viewModel, exception) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 64,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Error loading invoices',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        exception.message ?? 'Unknown error',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          context
                              .read<InvoiceBloc>()
                              .add(const InvoiceEvent.fetchInvoices());
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'paid':
        return Colors.green;
      case 'pending':
        return Colors.orange;
      case 'overdue':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}

