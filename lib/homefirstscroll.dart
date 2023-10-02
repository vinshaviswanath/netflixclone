import 'package:flutter/material.dart';
import 'package:netflix/images.dart';

class scroll extends StatelessWidget {
  const scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
         children: [
           Row(
            children: [
              Text("Previews",
              style:TextStyle(
                fontSize: 26.74821662902832,
                color: Colors.white
                )
              ),
            ],
    ),
    SizedBox(height: 15,),
    Container(
      height: 100,
      child:ListView.builder(
        scrollDirection:Axis.horizontal,
        itemBuilder: (context, index)=> SizedBox(
          height: 110,
          width: 110,
        child:CircleAvatar(
       backgroundImage: AssetImage(Circ[index]),),
         
        ),
      )),
      
      
    
         ],
      ),
    );    
  }
}

