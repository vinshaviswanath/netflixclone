// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class ComingsoonContainer extends StatefulWidget {
  const ComingsoonContainer({super.key});

  @override
  State<ComingsoonContainer> createState() => _ComingsoonContainerState();
}

class _ComingsoonContainerState extends State<ComingsoonContainer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      color: Color(0xff424242),
      child: Padding(
        padding:const EdgeInsets.only(right: 5),
        child: Row(
          children: [
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*.40,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(6),
                  color:Colors.amber,
                   ),
              ),
            ),
            SizedBox(width: 15
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("New Arrival",
              style: TextStyle(
                fontSize: 20,color: Colors.white,
              ),
              ),
              SizedBox(height: 5,),
              Text("EI Chapo",
              style: TextStyle(
                fontSize: 20,color:Colors.white
                ),
                ),
                SizedBox(height: 5,
                ),
              Text("vov 6",
              style: TextStyle(fontSize: 12,
              color: const Color.fromARGB(255,154,154,153)),
              ),
            ],
            ),
          ],
        ),
      ),
    );
    Container(
      height: 85,
      width: double.infinity,
      color: Color(0xff424242),
      child: Padding(
        padding:const EdgeInsets.only(right: 5),
        child: Row(
          children: [
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*.40,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(6),
                  color:Colors.amber,
                   ),
              ),
            ),
            SizedBox(width: 15
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("New Arrival",
              style: TextStyle(
                fontSize: 20,color: Colors.white,
              ),
              ),
              SizedBox(height: 5,),
              Text("EI Chapo",
              style: TextStyle(
                fontSize: 20,color:Colors.white
                ),
                ),
                SizedBox(height: 5,
                ),
              Text("vov 6",
              style: TextStyle(fontSize: 12,
              color: const Color.fromARGB(255,154,154,153)),
              ),
            ],
            ),
          ],
        ),
      ),
    );
    ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context,index){
        return Container(
          height: 385,
          width: 375,
          child: Column(
            children: [
              Container(
                height: 195,
                width: 375,
                child: Image(image: AssetImage("asset/image/Rectangle 22 (6).png")
                ),
              ),
              SizedBox(height: 5,),
              Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(Icons.notifications,color: Colors.white,),
                    SizedBox(height: 3,),
                    Text("Remind Me",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w300)),
                  ],
                ),
                SizedBox(width: 25,),
                Column(
                  children: [
                    Icon(Icons.share,color: Colors.white),
                    SizedBox(height: 3),
                    Text("Share",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 3),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Season 1 Coming December 14",style: TextStyle(fontWeight: FontWeight.w400),),
              SizedBox(height: 5,),
              Text("Castle & Castle",style: TextStyle(fontWeight: FontWeight.w400),),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam."),

                    ],
                  )
                ],
               ),
             );
           },),
           
  }
}
              
              
  
