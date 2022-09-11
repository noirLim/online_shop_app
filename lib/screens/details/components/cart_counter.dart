import 'package:flutter/material.dart';
import "package:online_shop_app/constants.dart";

class CartCounter extends StatefulWidget {
 

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int items = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget> [
        buildOutlineButton(
          icon: Icons.remove, 
          press:(){
            if(items > 1){
              setState(() {
                items--;
              });
            }
          }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
          child: Text(items.toString().padLeft(2,"0"),
          style: Theme.of(context).textTheme.headline5),
        ),
        buildOutlineButton(
          icon:Icons.add,
          press:(){
            setState(() {
              items++;
            });
          }
        )
      ],
    );
  }

  SizedBox buildOutlineButton({required IconData icon,required VoidCallback press}) {
    return SizedBox(
        width:40,
        height:32,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            padding: EdgeInsets.zero
          ),
          onPressed:press,
          child: Icon(icon),
        ),
      );
  }
}
