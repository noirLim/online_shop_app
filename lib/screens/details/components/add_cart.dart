import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/Product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding
      ),
      child: Row(
        children:<Widget> [
          Container(
            margin:EdgeInsets.only(right:kDefaultPadding),
            width:50,
            height:58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border:Border.all(color:product.color)
            ),
            child: IconButton(
              icon: SvgPicture.asset("assets/icons/add_to_cart.svg",
              color:product.color),
              onPressed: (){},
            ),
          ),
          Expanded(
            child: SizedBox(
              height:50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: product.color,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                  )
                ),
                onPressed: (){},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


