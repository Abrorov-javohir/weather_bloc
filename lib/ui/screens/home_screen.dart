import 'package:flutter/material.dart';
import 'package:weather_bloc/data/models/product.dart';
import 'package:weather_bloc/services/product_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final productService = ProductService();
    return Scaffold(
      body: FutureBuilder(
          future: productService.getProducts(),
          builder: (context, snapshot) {
            final products = productService.getProducts();
            print(products);
            return const Column(
              children: [],
            );
          }),
    );
  }
}
