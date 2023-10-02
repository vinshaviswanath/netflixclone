import 'package:flutter/material.dart';
import 'package:netflix/comingsoon.dart';
import 'package:netflix/download.dart';
import 'package:netflix/homeScreen.dart';
import 'package:netflix/menu.dart';
import 'package:netflix/searchscreen.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});
  @override
  State<Bottom> createState() => _BottomState();
}
class _BottomState extends State<Bottom> {
    int Select = 0;
    void tap(index){
      setState(() {
        Select=index;
      });
    }
  final screens = [ Homescreen(),Searchscreen(),Comingscreen(),Downloadscreen(),Menuscreen()];
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[Select],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color.fromARGB(255, 219, 218, 218),
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
        fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: Select,
        onTap:(value) => tap(value),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            color:const Color.fromARGB(255, 219, 218, 218),
            ),
            label: "Home",
            ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            color:const Color.fromARGB(255, 219, 218, 218),
            ),
            label: "Search",
            ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.preview,
            color:const Color.fromARGB(255, 219, 218, 218),
            ),
            label: "Preview",
            ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.download,
            color:const Color.fromARGB(255, 219, 218, 218),
            ),
            label: "Download",
            ),

            BottomNavigationBarItem(
            icon: Icon(
              Icons.more,
            color:const Color.fromARGB(255, 219, 218, 218),
            ),
            label: "More",
            ),
            
        ],
      ),
    );
  }
}