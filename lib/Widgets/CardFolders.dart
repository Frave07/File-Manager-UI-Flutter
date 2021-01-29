import 'package:flutter/material.dart';


class CardFolders extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 180,
      decoration: BoxDecoration(
        color: Color(0xffF3F3F3),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.folder, color: Colors.blue[600], size: 34),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ibo Hotels', style: TextStyle(fontSize: 16)),
              Text('6 invited', style: TextStyle(fontSize: 15, color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }
}