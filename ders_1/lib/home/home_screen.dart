import 'package:ders_1/constantas.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: nishAppBar(),
      body: Body(),
    );
  }

  AppBar nishAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_rounded,
          color: textColor,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: textColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
