import 'package:flutter/material.dart';

import 'package:file_manager/Pages/Home.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'File Manager App',
      initialRoute: 'home',
      routes: {
        'home' : (_) => HomePage()
      },
    );
  }
}