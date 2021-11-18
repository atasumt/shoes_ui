import 'package:ders_1/constantas.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final Color? color;
  final bool? isSelected;

  const ColorDot({Key? key, this.color, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: defaultPadding / 4, right: defaultPadding / 4),
          padding: EdgeInsets.all(2.5),
          height: 25,
          width: 25,
          decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: isSelected! ? color! : Colors.transparent),),
          child: DecoratedBox(decoration: BoxDecoration(color: color,shape: BoxShape.circle),),
    );
  }
}
