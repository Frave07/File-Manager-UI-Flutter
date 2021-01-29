import 'package:flutter/material.dart';


class Picture extends StatelessWidget
{
  final Color color;

  const Picture({ this.color });


 @override
 Widget build(BuildContext context)
 {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      height: 230,
      width: 110,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Image.asset('Assets/image1.jpg'),
    );
  }
}