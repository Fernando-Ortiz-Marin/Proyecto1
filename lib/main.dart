import 'package:appro1/src/pages/home_page.dart';
import 'package:flutter/material.dart';

 void main(){
   runApp(Aplication());
 }

 class Aplication extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Animes',
      home: Home_page(),
      theme: ThemeData(
        primaryColor: Color(0xFFFF5722),
        accentColor: Color(0xFFFFC107)
      ),
    );
  }

 }