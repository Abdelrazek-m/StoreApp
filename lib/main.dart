import 'package:chop_app/pages/home_page.dart';
import 'package:chop_app/pages/update_product_page.dart';
import 'package:flutter/material.dart';

void main() {
  // print('hi');
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) => const UpdateProductPage(),
      },
    );
  }
}
