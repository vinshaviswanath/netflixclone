import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:netflix/images.dart';

class Downloadscreen extends StatefulWidget {
  const Downloadscreen({super.key});
  @override
  State<Downloadscreen> createState() => _DownloadscreenState();
}
class _DownloadscreenState extends State<Downloadscreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Smart Downloads"),
      backgroundColor: Colors.black,
      ),
      body:Column(children: [
        Padding(
          padding:const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Introducing Downloads For You",
              style: TextStyle(
                color: Colors.white,
                fontSize: 19.63,
                fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
              style: TextStyle(
                color: Colors.white,fontSize: 10.63,height: 1.5),
                textAlign: TextAlign.justify,
                 ),
               ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 80,
              backgroundColor: Color(0xff424242),
            ),
            SizedBox(height: 20,
            ),
            Container(
              height: 40,
              width: MediaQuery.sizeOf(context).width*1,
              color: Colors.blue,
                child: Center(
                  child:Text("SETUP",
                  style: TextStyle(
                    color: Colors.white,
                  )),
                 ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 33,
                width: MediaQuery.sizeOf(context).width *.7,
                color: Color(0xff424242),
                  child: Center(
                    child: Text("Find Something To Download",
                    style: TextStyle(
                      color:Colors.white ,
                      )),
                    ),
                   ),
      ]),
     );
  }
}   

 
 