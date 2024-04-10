import 'package:flutter/material.dart';
class flowchart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:Text('FLowChart',style:TextStyle(fontSize:25,fontFamily: 'font2',fontWeight: FontWeight.w900)),
        backgroundColor: Colors.purpleAccent,
      ),
      body:Container(
        decoration:BoxDecoration(
            image:DecorationImage(image: AssetImage('assets/images/go.jpg'),fit:BoxFit.fill)
        ),
        height:double.infinity,
        width:double.infinity,
        child:Image.asset('assets/images/romo.png',fit:BoxFit.fill),
      )
    );
  }

}