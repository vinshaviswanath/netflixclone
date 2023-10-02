import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix/carousalslider.dart';
import 'package:netflix/homefirstscroll.dart';
import 'package:netflix/homesecondscroll.dart';
import 'package:netflix/images.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}
class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            Carousalslider(),
            SizedBox(
              height: 20,
            ),
               Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                Column(        
                    children: [
                      Icon(
                      Icons.add,
                      color: Colors.white,
                      ),
                      Text("My list",
                      style: TextStyle(color: Colors.white,fontSize: 15 ))
                    ],
                  ),
                  Container(
                    height:50,
                    width:80,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color: Colors.white ,
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.play_arrow),
                          Text("Play")],
                           ),
                          ),
                 
                    Column(
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.white),
                        Text("info",
                          style: TextStyle(color: Colors.white,fontSize: 15))
                      ],
                    ),
                ],
              ),
            SizedBox(height: 10
            ),
        
        
            
                  ],
                ),
              ),
         
          );
  }
}