import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:trylaw/profile.dart';


import 'login.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _movetopro(); }

  class _movetopro extends State<loginpage>{
  @override
   void initState(){
     super.initState();
       Timer(Duration(seconds:5),(){
       Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>login(),),);
       });

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bo.png'), fit: BoxFit.fill,

           ),
         ),
         child: Scaffold(
           backgroundColor: Colors.transparent,
           body:
           Center(
             child: Container(
               margin: EdgeInsets.only(left: 40,top:420),
               child: Text('Welcome to Legal Quest : laws & justice of adventures !!!!',
                 style: TextStyle(fontSize: 40,
                     fontWeight: FontWeight.w900,
                     color: Colors.white,fontFamily: 'font2'),
               ),


             ),
           ),

         ),

       );
     }
  }



