import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class ProductScreen extends StatefulWidget {
  @Preview(name: 'Product Screen', size: Size(375, 812), brightness: Brightness.light)
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Product Screen'),
      ),
      body: const Center(
        child: Text('Welcome to the Product Screen!'),
      ),
    );
  }
}
