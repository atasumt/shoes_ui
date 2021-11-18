import 'package:ders_1/constantas.dart';
import 'package:ders_1/model/product.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Text(
        product.description,
        style: TextStyle(height: 2),
      ),
    );
  }
}
