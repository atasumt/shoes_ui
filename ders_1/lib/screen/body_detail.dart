import 'package:ders_1/constantas.dart';
import 'package:ders_1/model/product.dart';
import 'package:ders_1/screen/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

class BodyDetail extends StatelessWidget {
  final Product product;

  const BodyDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.30),
                  padding: EdgeInsets.only(
                      top: size.height * 0.10,
                      left: defaultPadding,
                      right: defaultPadding),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(
                        height: defaultPadding / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: defaultPadding / 2,
                      ),
                      CounterWithFavBtn(),
                      SizedBox(
                        height: defaultPadding / 2,
                      ),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
