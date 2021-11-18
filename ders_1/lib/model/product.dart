import 'package:flutter/cupertino.dart';

class Product {
  final String image, title, description;
  final price, size, id;
  final Color color;

  Product(
      {required this.color,
      required this.description,
      required this.id,
      required this.image,
      required this.price,
      required this.size,
      required this.title});
}

List<Product> products = [
  Product(
      color: Color(0xFF3D82AE),
      description: dummyText,
      id: 1,
      image: "assets/images/aykb1.png",
      price: 2000,
      size: 34,
      title: "ADİAS"),
  Product(
      color: Color(0xFFD3A984),
      description: dummyText,
      id: 2,
      image: "assets/images/aykb2.png",
      price: 2500,
      size: 45,
      title: "KİNETİX"),
  Product(
      color: Color(0xFF989493),
      description: dummyText,
      id: 3,
      image: "assets/images/aykb3.png",
      price: 3200,
      size: 48,
      title: "NİKE"),
  Product(
      color: Color(0xFFE6B398),
      description: dummyText,
      id: 4,
      image: "assets/images/aykb4.png",
      price: 5000,
      size: 44,
      title: "PUMA"),
  Product(
      color: Color(0xFFD3A984),
      description: dummyText,
      id: 2,
      image: "assets/images/aykb5.png",
      price: 2500,
      size: 45,
      title: "KİNETİX"),
  Product(
      color: Color(0xFF989493),
      description: dummyText,
      id: 3,
      image: "assets/images/aykb1.png",
      price: 3200,
      size: 48,
      title: "NİKE"),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,";
