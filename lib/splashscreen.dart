import 'package:flutter/material.dart';
import 'loginscreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  void initState(){
  super.initState();
  Future.delayed(Duration(seconds: 2))
  .then((value) => Navigator.push(
  context, 
  MaterialPageRoute(builder: (context)=> LoginScreen(),
  )));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Center(
      child: Container(
        child: Image.asset("asset/image/Vector.png"),
        height: 150,
        width: 150,
      ),),
       SizedBox(height: 50,
       ),
       CircularProgressIndicator(
        color: Colors.red,
      )]
    ),);
  }
  
}
