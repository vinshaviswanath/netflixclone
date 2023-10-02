import 'package:flutter/material.dart';
import 'package:netflix/comingsooncontainer.dart';

class Comingscreen extends StatefulWidget {
  const Comingscreen({super.key});

  @override
  State<Comingscreen> createState() => _ComingscreenState();
}

class _ComingscreenState extends State<Comingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffF50914),
                    radius: 15,
                    child: Icon(Icons.edit_notifications_rounded,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text("Notifications",
                  style:
                   TextStyle(color: Colors.white,fontSize: 16),
                   ),
                ],
              ),),
            ComingsoonContainer(),
            SizedBox(height: 30,),
          ],) ),
    );
  }
}