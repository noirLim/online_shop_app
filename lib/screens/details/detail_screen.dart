import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/Product.dart';
import 'package:online_shop_app/screens/details/components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  DetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.white,
          ),
        ),
      actions:<Widget> [
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: (){},
        ),
         IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: (){},
        ),
        SizedBox(width: kDefaultPadding/2)
      ],
      ),
      body:Body(product :product)
    );
  }
}
