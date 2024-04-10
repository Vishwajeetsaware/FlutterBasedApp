import 'package:flutter/material.dart';

import 'contact.dart';
import 'flowchart.dart';
class help extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Row(
          children: [
            Text('Help',style:TextStyle(fontSize: 30,fontFamily: 'font2',fontWeight: FontWeight.w900,color:Colors.white)),
            Container(
              margin:EdgeInsets.only(left:10),
              height:50,
              width:50,
              child:Image.asset('assets/images/help.png')
            )
          ],
        ),
        backgroundColor: Colors.purpleAccent,
        elevation:10,
      ),
      body:Container(
          decoration:BoxDecoration(
              image:DecorationImage(image: AssetImage('assets/images/go.jpg'),fit:BoxFit.fill)
          ),
        child: Center(
    child: Center(
        child: Container(
          margin:EdgeInsets.only(left:70),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  margin:EdgeInsets.only(top:126),
                  child: Center(
                    child: Column(
                      children: [
                        InkWell(
                          onTap :(){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>flowchart()));
                  },
                          child: Container(
                          height:400,
                          width:118,
                            decoration:BoxDecoration(
                              color:Colors.deepOrange,
                              borderRadius:BorderRadius.only(topLeft: Radius.circular(300),bottomLeft:Radius.circular(40),topRight: Radius.circular(10)),
                            ),
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height:100,
                                    width:100,
                                    decoration:BoxDecoration(
                                        color:Colors.white,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(200))
                                    )
                                  ),
                                ),
                                Container(
                                    height:100,
                                    width:100,
                                    color:Colors.white

                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height:100,
                                      width:100,
                                      color:Colors.white
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top:4),
                                  height:55,
                                  width:55,
                                  child:Image.asset('assets/images/planning.png')
                                )
                              ],
                            )

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:40,
                            width:100,
                              child:Center(child: Text('FlowChart',style:TextStyle(fontSize:20,fontFamily: 'font6',fontWeight: FontWeight.w900)))
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>contact()));
                  },
                  child: Container(
                    margin:EdgeInsets.only(top:125),
                    child: Column(
                      children: [
                        Container(
                          height:400,
                          width:118,
                            decoration:BoxDecoration(
                              color:Colors.yellowAccent,
                              borderRadius:BorderRadius.only(topRight: Radius.circular(300),bottomRight:Radius.circular(40),topLeft: Radius.circular(10)),
                            ),
                          child:Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height:100,
                                  width:100,
                                    decoration:BoxDecoration(
                                        color:Colors.white,
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(200))
                                    )
                                ),
                              ),
                              Container(
                                height:100,
                                width:100,
                                color:Colors.white

                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height:100,
                                  width:100,
                                  color:Colors.white
                                ),
                              ),
                              Container(
                                margin:EdgeInsets.only(top:4),
                                height:55,
                                width:55,
                                child:Image.asset('assets/images/customer-support.png')
                              )
                            ],
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:40,
                            width:100,
                            child:Center(child: Text('Contact us',style:TextStyle(fontSize:20,fontFamily: 'font6',fontWeight: FontWeight.w900)))
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
    ),
        ),
      ),
    );
  }

}