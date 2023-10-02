import 'package:flutter/material.dart';
import 'package:netflix/searchcontainer.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(children: [Container(height: 54,color: Color(0xff424242),
        child: Row(
          children: [
            Icon(Icons.search,color:Colors.grey,),
            Text("Search for a show, movie, genre, e.t.c",
            style: TextStyle(color:Color(0xffC4C4C4))),
            SizedBox(width: 80,),
            Icon(
              Icons.mic,
            color:Color(0xffC4C4C4),
            ),
          ]),

         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             children: [
               Text("Top Searches",
               style: TextStyle(color: Colors.white,fontSize: 25),),
               
             ],
           ),
         ),
         Searchcontainer()
        ],
       )
      ),
      
    );
  }
}