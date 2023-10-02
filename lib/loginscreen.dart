import 'package:flutter/material.dart';
import 'package:netflix/bottomnavigation.dart';
import 'package:netflix/homeScreen.dart';
import 'package:netflix/images.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title:Padding(
          padding: const EdgeInsets.only(top:20),
          child:Center(
          child:Image.asset("asset/image/Vector.png",
          width: 150,
          height: 80,
          ),
        ),
      ),  
    ),
  backgroundColor: Colors.black,
  body: Column(children: [
    SizedBox(height: 80,),
    Expanded(
      child: Padding(padding: 
      const EdgeInsets.all(75),
      child:GridView.builder(
        itemCount: myMapp.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 140,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2),
          itemBuilder: (context,index)=>Column(
            children: [
              InkWell(
                onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context)=>Bottom(), 
                    )),
                    child: Container(
                    height: 100,
                    width: 92,
                    child: Image.asset(myMapp[index]["image"]),
                     ),
                    ),
              SizedBox(
                height: 10,
              ),
              Text(
                myMapp[index]["name"],
              style: TextStyle(color: Colors.white),
              ),
            ],
            
          ),
        )
      ),
      )]),
    );

  }
}

