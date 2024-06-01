import 'package:commercejs_project/application/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double imageHeight = width > 1200
        ? 250
        : width > 800
            ? 200
            : 165;
    double fontSize = width > 1200
        ? 22
        : width > 800
            ? 20
            : 18;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: imageHeight,
          width: double.infinity,
          color: const Color.fromARGB(255, 229, 229, 229),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.network(
              product.imageUrl,
              height: imageHeight - 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            product.name,
            style: TextStyle(
              fontSize: fontSize,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          product.description,
          style: TextStyle(fontSize: fontSize - 2),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          '₹${product.price.toString()}',
          style: TextStyle(
            fontSize: fontSize - 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
