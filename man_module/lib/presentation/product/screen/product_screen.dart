import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:man_module/domain/entity/product_entity.dart';
import 'package:man_module/di/di.dart';
import 'package:man_module/presentation/product/bloc/product_bloc.dart';
import 'package:ui_design_system/screen_util/ds_screen_util.dart';

class ProductScreen extends StatefulWidget {
  @Preview(name: 'Product Screen',
      size: DSScreenUtil.screenSize,
      brightness: Brightness.light)
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late final ProductBloc _productBloc;

  @override
  void initState() {
    super.initState();
    _productBloc = getIt<ProductBloc>()
      ..add(const ProductEvent.fetchData(page: 1));
  }

  @override
  void dispose() {
    _productBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductBloc>.value(
      value: _productBloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Product Screen'),
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
          buildWhen: (previous, current) =>
              previous.runtimeType != current.runtimeType ||
              previous.viewModel.products.length !=
                  current.viewModel.products.length,
          builder: (context, state) {
            return state.when(
              primary: (viewModel) {
                if (viewModel.products.isEmpty) {
                  return const Center(child: Text('No products available'));
                }

                return ListView.builder(
                  itemCount: viewModel.products.length,
                  itemBuilder: (context, index) {
                    return _ProductListItem(index: index);
                  },
                );
              },
              loading: (_) =>
                  const Center(child: CircularProgressIndicator()),
              error: (_, exception) => Center(
                child: Text(exception.message ?? 'Unknown error'),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ProductListItem extends StatelessWidget {
  const _ProductListItem({
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProductBloc, ProductState, ProductEntity?>(
      selector: (state) {
        final products = state.viewModel.products;
        if (index >= products.length) return null;
        return products[index];
      },
      builder: (context, product) {
        if (product == null) return const SizedBox.shrink();

        return Card(
          key: ValueKey(product.id),
          child: ListTile(
            leading: const Icon(Icons.photo),
            title: Text(product.name),
            subtitle: Text('ID: ${product.id}'),
            trailing: IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {
                // TODO: handle view details action
              },
            ),
          ),
        );
      },
    );
  }
}
