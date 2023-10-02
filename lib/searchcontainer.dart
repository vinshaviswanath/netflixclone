import 'package:flutter/material.dart';
import 'package:netflix/images.dart';

class Searchcontainer extends StatefulWidget {
  const Searchcontainer({super.key});

  @override
  State<Searchcontainer> createState() => _SearchcontainerState();
}
class _SearchcontainerState extends State<Searchcontainer> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
              color: Colors.black,
              width: double.infinity,
              height: 568,
              child: ListView.builder(
                itemCount: names.length,
                scrollDirection: Axis.vertical,
                
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 146,height:80 ,color: Colors.black,
                        child: Image.asset(search[index]),
                      ),
                      Text(names[index],style: TextStyle(color: Colors.white),),
                      Icon(Icons.play_circle_outline_sharp,color: Colors.white,)
                      
                    ],
                  ),
                    height: 90,
                    width: double.infinity,
                    color: Color.fromARGB(255, 47, 40, 40),
                  ),
                ),
              ))
      ]
    );
  }
}