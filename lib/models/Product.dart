import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: "Kaos Pria Polos",
    price: 120000,
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Kaos Cewe",
    price: 120000,
  ),
  Product(
    image: "assets/images/product_0.png",
    title: "Kaos Pria Polos",
    price: 120000,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Kaos Cewe",
    price: 120000,
    bgColor: const Color(0xFFEEEEED),
  ),
];
