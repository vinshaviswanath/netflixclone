import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix/movies.dart';
import 'package:netflix/mylist.dart';
import 'package:netflix/tvshows.dart';

class Carousalslider extends StatefulWidget {
  const Carousalslider({super.key});

  @override
  State<Carousalslider> createState() => _CarousalsliderState();
}

class _CarousalsliderState extends State<Carousalslider> {
  GlobalKey<CarouselSliderState> sliderkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    List slider=[
      "asset/image/Rectangle 26.png",
      "asset/image/Rectangle 26 (2).png",
      "asset/image/Rectangle 26 (1).png",
    ];
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.5,
          width: MediaQuery.of(context).size.width*1,
          child: CarouselSlider.builder(
            key: sliderkey,
            itemCount: slider.length,
             itemBuilder: (context, index, realindex){
              return Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width: MediaQuery.of(context).size.width*1,
                  decoration: BoxDecoration(
                  image: DecorationImage(
                  image:AssetImage(slider[index]),fit:BoxFit.fill),
                  ),
              );
             },
             options:CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              height: MediaQuery.of(context).size.height*0.5,
              scrollDirection: Axis.horizontal)),    
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.5,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              
            children: [Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("asset/image/logos_netflix-icon.png"),
                fit: BoxFit.cover),
               ), 
              ),
              InkWell(
                child:Text("TV Shows",
                style: TextStyle(fontSize: 15,color: Colors.white),
                ),
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>Tvshows(),
                    ));
                 },
                ),
                InkWell(
                child:Text("Movies",
                style: TextStyle(fontSize: 15,color: Colors.white),
                ),
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>Movies(),
                    ));
                 },
                ),
                InkWell(
                child:Text("my List",
                style: TextStyle(fontSize: 15,color: Colors.white),
                ),
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>Mylist(),
                    ));
                 },
                ),
               ],
              ),
              Text("#2 Nigiria Today",
              style: TextStyle(fontSize: 15,color:Colors.white)),
            ],
            ),
          ),
      ],
    );
  }
}