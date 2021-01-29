import 'package:flutter/material.dart';


class CardStorage extends StatelessWidget
{
  final String imageData;
  final String title;
  final Color color;

  const CardStorage({ this.imageData, this.title, this.color });

 @override
 Widget build(BuildContext context)
 {
    return Container(
      padding: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
      margin: EdgeInsets.only(right: 10.0),
      height: 170,
      width: 270,
      decoration: BoxDecoration(
        color: Color(0xff393E46),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Image(image: AssetImage(this.imageData))
              ),
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.grey, size: 28),
                onPressed: null
              )
            ],
          ),
          SizedBox(height: 15),
          Text(this.title, style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('48/64 Gb', style: TextStyle(color: Colors.grey, fontSize: 14)),
              Text('Exp 07/2021', style: TextStyle(color: Colors.grey, fontSize: 14)),
            ],
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Container(
                height: 6.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff222831),
                  borderRadius: BorderRadius.circular(10.0)
                ),
              ),
              Container(
                height: 6.0,
                width: 180,
                decoration: BoxDecoration(
                  color: this.color,
                  borderRadius: BorderRadius.circular(10.0)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}