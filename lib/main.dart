import 'package:flutter/material.dart';
import 'package:weather_bloc/data/models/product.dart';
import 'package:weather_bloc/services/product_service.dart';
import 'package:weather_bloc/ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}
