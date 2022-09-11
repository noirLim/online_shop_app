import 'package:flutter/material.dart';
import 'package:online_shop_app/models/Product.dart';
import 'package:online_shop_app/constants.dart';

class ColorSize extends StatelessWidget {
  const ColorSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top:10,
        ),
      child: Row(
        children:<Widget> [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Text('Color'),
                Row(
                  children:<Widget> [
                    ColorCode(color:Color(0xFF356C95),isSelected:true),
                     ColorCode(color:Color(0xFFF8C078)),
                     ColorCode(color:Color(0xFFA29B98))
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: RichText(text: TextSpan(
              style: TextStyle(color:kTextColor),
              children: [
                TextSpan(
                  text:'Size\n'
                ),
                TextSpan(
                  text:"${product.size} cm",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold
                  )
                )
              ]
            )),
          )
        ],
      ),
    );
  }
}

class ColorCode extends StatelessWidget {
  final Color color;
  final bool isSelected;

  ColorCode({required this.color,this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(
        top:kDefaultPadding /4,
        right:kDefaultPadding/2
      ),
      padding:EdgeInsets.all(2.5),
      height:24,
      width:24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:Border.all(
          color:isSelected ? color : Colors.transparent
        )
      ),
      child: DecoratedBox(
        decoration:BoxDecoration(
          color:color,
          shape: BoxShape.circle
        )
      ),
    );
  }
}
