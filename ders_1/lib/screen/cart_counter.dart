import 'package:ders_1/constantas.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        outLineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItem > 1) {
              setState(
                () {
                  numOfItem--;
                },
              );
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
          child: Text(
            numOfItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        outLineButton(
          press: () {
            setState(
              () {
                numOfItem++;
              },
            );
          },
          icon: Icons.add,
        )
      ],
    );
  }

  SizedBox outLineButton({required Function press, IconData? icon}) {
    return SizedBox(
      width: 50,
      height: 40,
      child: OutlinedButton(
        onPressed: () {
          press();
        },
        child: Icon(icon),
      ),
    );
  }
}
