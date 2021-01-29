import 'package:flutter/material.dart';

class ItemIcon extends StatelessWidget {

  final String title;
  final Color color;
  final IconData icon;

  const ItemIcon({ this.title, this.color, this.icon });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, size: 48, color: this.color),
        Text(this.title, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        SizedBox(height:5),
        Text('80 items', style: TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }
}