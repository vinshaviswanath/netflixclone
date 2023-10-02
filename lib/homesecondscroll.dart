import 'package:flutter/material.dart';
import 'package:netflix/images.dart';

class containerscroll extends StatelessWidget {
  final String titlecontainer;
  containerscroll({super.key,required this.titlecontainer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
         children: [
           Row(
            children: [
              Text("Continue watching for Emenalo",
              style:TextStyle(
                fontSize: 24,
                color: Colors.white
                )
              ),
            ],
    ),
    SizedBox(
      height: 15,
    ),
    Container(
      height: 160,
      child:ListView.builder(
        itemCount: Movies.length,
        scrollDirection:Axis.horizontal,
        itemBuilder: (context, index)=> Padding(
          padding: const EdgeInsets.symmetric(horizontal:5),
            child: Container(
              height: 161,
              width: 113,
              child: Image.asset(Movies[index]),
             
            ),
          ),
        ),
      ),
 
      
         ],
      ),
    );    
  }
}