import 'package:flutter/material.dart';

import 'package:file_manager/Pages/DraggableScrollCustom.dart';
import 'package:file_manager/Widgets/CardStorage.dart';
import 'package:file_manager/Widgets/Picture.dart';


class HomePage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      appBar: AppBar(
        backgroundColor: Color(0xff222831),
        leading: Icon(Icons.sort, color: Color(0xff4C525B), size: 28),
        elevation: 0.0,
        actions: [
          Icon(Icons.search, color: Color(0xff4C525B), size: 27),
          SizedBox(width: 15),
          Icon(Icons.settings, color: Color(0xff4C525B), size: 27),
          SizedBox(width: 20),
        ],
      ),
      body: Stack(
        children: [

          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 25),
              Center(
                child: Text('Manage', style: TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.w300)),
              ),
              Center(
                child: Text('Your Files', style: TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Storage', style: TextStyle(color: Colors.white, fontSize: 17)),
                    Icon(Icons.filter_list, color: Color(0xff4C525B), size: 27),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(left: 15.0),
                height: 200,
                width: double.infinity,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [

                    CardStorage(imageData: 'Assets/dropbox.png', title: 'Dropbox', color: Color(0xff0E67FA)),
                    CardStorage(imageData: 'Assets/drive.png', title: 'Google Drive', color: Color(0xffFFA800)),
                    CardStorage(imageData: 'Assets/mega.png', title: 'Mega', color: Colors.red),

                  ],
                ),
              ),
              SizedBox(height: 45),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recent (30 days)', style: TextStyle(color: Colors.grey, fontSize: 14)),
                    Row(
                      children: [
                        Icon(Icons.refresh, color: Color(0xff4C525B), size: 27),
                        SizedBox(width: 10),
                        Icon(Icons.visibility_outlined, color: Color(0xff4C525B), size: 27),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: Image.asset('Assets/gmail.png'),
                        ),
                        SizedBox(width: 10),
                        Text('Gmail Pictures(16)', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ],
                    ),
                    Text('29 min ago', style: TextStyle(color: Colors.grey, fontSize: 14)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 15.0),
                height: 250,
                width: double.infinity,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [

                    Picture(color: Color(0xffFF9090)),
                    Picture(color: Color(0xffF8A8FB)),
                    Picture(color: Color(0xffC780ff)),
                    Picture(color: Color(0xffa3a1ff)),

                  ],
                ),
              ),
            ],
          ),

          DraggableScrollableSheet(
            initialChildSize: 0.20,
            minChildSize: 0.15,
            maxChildSize: 0.95,
            builder: ( context, s){
                 return DraggableScrollCustom(scrollController: s);
            }
          )

        ],
      ) 
       
    );
  }
}

