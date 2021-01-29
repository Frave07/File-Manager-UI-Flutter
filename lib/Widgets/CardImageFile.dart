import 'package:flutter/material.dart';


class CardImage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 200,
      width: 170,
      child: Column(
        children: [
          Container(
            height: 130,
            width: 190,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0)
            ),
          ),
          SizedBox(height: 10),
          Text('Pic-Model.png', style: TextStyle(fontSize: 17, color: Colors.grey)),
        ],
      ),
    );
  }
}