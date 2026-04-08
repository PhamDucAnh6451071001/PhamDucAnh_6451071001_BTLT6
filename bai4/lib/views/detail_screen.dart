import 'package:flutter/material.dart';
import '../models/product.dart';
import '../untils/constants.dart';

class DetailScreen extends StatelessWidget {

  final Product product;

  const DetailScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Product Detail"),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,

          children: [

            Text(
              "Product Detail",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 20),

            Text(
              "Name: ${product.name}",
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 10),

            Text(
              "Price: \$${product.price}",
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 20),

            // MSSV
            Text(
              Constants.student.mssv,
              style: TextStyle(fontSize: 18),
            ),

          ],
        ),
      ),
    );
  }
}