import 'package:flutter/material.dart';
class map extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Row(
          children: [
            Text('Map',style:TextStyle(fontSize: 30,fontFamily: 'font2',fontWeight: FontWeight.w900,color:Colors.white)),
            Container(
              margin:EdgeInsets.only(left:6,bottom:5),
              height:50,
              width:50,
              child:Image.asset('assets/images/google-maps.png')
            )
          ],
        ),
        backgroundColor: Colors.purpleAccent,
        elevation:10
      ),
      body:Container(
        height:double.infinity,
        width:double.infinity,
        decoration:BoxDecoration(
          image:DecorationImage(
            image:AssetImage('assets/images/jobhi.jpg'),fit:BoxFit.fill
          )
        )
      )
    );
  }

}