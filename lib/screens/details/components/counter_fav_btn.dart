import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import "cart_counter.dart";


class CounterwithFavBtn extends StatelessWidget {
  const CounterwithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:<Widget> [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8.0),
          width:32,
          height:32,
          decoration: BoxDecoration(
            color:Color(0xFFFF6464),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}
