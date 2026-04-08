import 'package:flutter/material.dart';
import '../models/product.dart';

import '../untils/constants.dart';
import '../widgets/product_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {

  HomeScreen({super.key});

  // Danh sách sản phẩm
  final List<Product> products = [

    Product(name: "Laptop", price: 1500),
    Product(name: "Phone", price: 800),
    Product(name: "Tablet", price: 600),
    Product(name: "Headphones", price: 200),
    Product(name: "Keyboard", price: 100),

  ];

  void openDetail(
      BuildContext context,
      Product product,
      ) {

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            DetailScreen(product: product),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Product List"),
      ),

      body: Column(
        children: [

          Expanded(

            child: ListView.builder(
              itemCount: products.length,

              itemBuilder: (context, index) {

                final product =
                products[index];

                return ProductCard(
                  product: product,
                  onTap: () {
                    openDetail(
                        context,
                        product);
                  },
                );

              },
            ),

          ),

          SizedBox(height: 10),

          // MSSV
          Text(
            Constants.student.mssv,
            style: TextStyle(fontSize: 18),
          ),

          SizedBox(height: 10),

        ],
      ),
    );
  }
}