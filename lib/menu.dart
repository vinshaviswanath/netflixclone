import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix/images.dart';

class Menuscreen extends StatefulWidget {
  const Menuscreen({super.key});

  @override
  State<Menuscreen> createState() => _MenuscreenState();
}

class _MenuscreenState extends State<Menuscreen> {
  List text=["Emenalo","Onyeka","Thelma","Kids",""];
  List img =["asset/image/Group 66.png",
              "asset/image/Group 67.png",
              "asset/image/Group 69.png",
              "asset/image/Group 82.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Container(
                  width: MediaQuery.of(context).size.width*1,
                  height: MediaQuery.of(context).size.height*.2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Row(
                        children: [
                          SizedBox(width: 5,),
                          Column(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            image.asset(img[index]),
                            Text(text[index],
                            style: TextStyle(color: Colors.white),)
                          ])]);
                    },),
                ),
                Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit,color: Colors.white,),
                  SizedBox(width: 4,),
                  Text("Manage Profiles",
                  style: TextStyle(color: Colors.white,fontSize: 15)),
                 ],
                )),
                SizedBox(height: 8),
                Container(
                  width: 375,
                  height: 247,
                  color: Color.fromARGB(255, 41, 39, 39),
                  child: Padding(
                    padding:const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.sms,color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("Tell friends about  Netflix.",
                          style: TextStyle(color: Colors.white,
                          fontSize: 20,
                          fontWeight:FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox( height:10),
                      Text("Lorem ipsum dolor sit amet,consectetur adipiscin elit.sit quam dui,vivamusbibendum ut.A morbi mi tortor ut",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 10),
                      Text("Terms & Conditions",style: TextStyle(fontSize: 11,color:Color(0xffC4C4C4),decoration: TextDecoration.underline),
                      ),
                      SizedBox(
                        height: 10,),
                        Row(
                          children: [
                            Container(
                              color: Colors.black,
                              width: 217,
                              height: 37,
                            ),

                        SizedBox(height: 5,),
                            Container(
                              width: 116,
                              height: 37,
                              child: ElevatedButton(
                                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                                onPressed: (){},
                                child: Text("Copy Link",style: TextStyle(color: Colors.black,fontSize: 17),)),
                            ),
                            ],
                        ),
                        SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("asset/image/Group 93.png"),
                          Container(height: 35,
                          width: 1,
                          color: Color(0xffC4C4C4),
                          margin: EdgeInsets.symmetric(vertical: 8),
                          ),
                          Image.asset("asset/image/Group 92.png"),
                          Container(height: 35,
                          width: 1,
                          color: Color(0xffC4C4C4),
                          margin: EdgeInsets.symmetric(vertical: 8),
                          ),
                          Image.asset("asset/image/Group 94.png"),
                          Container(height: 35,
                          width: 1,
                          color: Color(0xffC4C4C4),
                          margin: EdgeInsets.symmetric(vertical: 8),
                          ),

            Column(
              children: [
                Icon(Icons.more_horiz,color: Colors.white),
                SizedBox(height: 3,),
                Text("More",style: TextStyle(color: Colors.white),)
              ],
            )],)],),),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(children: [
                Icon(Icons.check,color: Colors.white,size: 35),
                SizedBox(width: 3,),
                Text("My List",style: TextStyle(fontSize: 14,color: Colors.white),)
                ],
              ),
            ),
            SizedBox(height: 5,),
            Divider(
              height: 1,
              thickness: 0.8,
              color: Color(0xffC4C4C4),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 16,top:16),
            child: Column(
              children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("App settings",style: TextStyle(color: Colors.white,fontSize: 15),),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text("Account",style: TextStyle(color: Colors.white,fontSize: 15),),
             ],
            ),
             SizedBox(height: 15,),
            Row(
              children: [
                Text("Help",style: TextStyle(color: Colors.white,fontSize: 15),),
             ],
            ),
             SizedBox(height: 15,),
            Row(
              children: [
                Text("Sign Out",style: TextStyle(color: Colors.white,fontSize: 15),),
             ],
            )
          ],
            ),
            ),
              ],
            ),),),

        ],
      ),);
  }
}
            
  
 
        
 