import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
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
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductBloc>(
      create: (context) => getIt<ProductBloc>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Product Screen'),
        ),
        body: const Center(
          child: Text('Welcome to the Product Screen!'),
        ),
      ),
    );
  }
}
