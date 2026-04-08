import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {

  final Product product;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.all(8),

      child: ListTile(
        title: Text(product.name),
        subtitle: Text(
          "Price: \$${product.price}",
        ),
        onTap: onTap,
      ),
    );

  }
}