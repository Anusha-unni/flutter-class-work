import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/productcard.dart';
import 'package:flutter_application_1/models/products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Text('homescreen'),
    // );
    return Center(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.6),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(data: products[index]);
            }));
  }
}
