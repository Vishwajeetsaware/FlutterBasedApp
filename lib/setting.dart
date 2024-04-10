import 'package:flutter/material.dart';
class setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Row(
          children: [
            Text('Setting',style:TextStyle(fontSize: 30,fontWeight: FontWeight.w900,fontFamily:'font2',color:Colors.white)),
            Container(
              margin:EdgeInsets.only(left:8),
              height:50,
              width:50,
              child:Image.asset('assets/images/settings.png')
            )
          ],
        ),
        backgroundColor: Colors.purpleAccent,
        elevation:10,
      ),
      body:Center(
        child: Container(
          height:100,
          width:100,
          child:Image.asset('assets/images/work-in-progress (1).png')
        ),
      )
    );
  }

}