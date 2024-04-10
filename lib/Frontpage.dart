import 'package:flutter/material.dart';
import 'package:trylaw/map.dart';
import 'package:trylaw/parliament.dart';
import 'package:trylaw/profile.dart';
import 'package:trylaw/quiz.dart';
import 'package:trylaw/setting.dart';
import 'package:trylaw/shop.dart';

import 'consti.dart';
import 'court.dart';
import 'end.dart';
import 'games.dart';
import 'help.dart';
import 'info.dart';
import 'law.dart';
import 'lawyer.dart';
import 'leader.dart';

class Frontpage extends StatefulWidget{
  @override
  State<Frontpage> createState()=> _newpage();}
class _newpage extends State<Frontpage> {
  double screenHeight = 0;
  double screenWidth = 0;
  String dropdownValue = 'Home';

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child: Container(
                    child: Row(
                      children: [

                        Container(child: Text('Home', style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                        Container(child: Icon(Icons.home_rounded, size: 30,
                            color: Colors.white)),
                      ],
                    ))),
                Container(
                  margin: EdgeInsets.only(left: 50, right:2, bottom: 9),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (
                          context) => profile()),);
                    },
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage('assets/images/boypro.png'),
                    ),
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(bottom:10),
                    child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.list_rounded, size: 50,color:Colors.white),
                        style: TextStyle(color: Colors.white),
                        dropdownColor:Colors.purple,
                        alignment :AlignmentDirectional.centerStart,
                        focusColor:Colors.purple,
                        borderRadius:BorderRadius.only(topLeft:Radius.circular(21),bottomRight:Radius.circular(21)),
                        underline: Container(
                          height: 3,
                          color: Colors.white,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: const [
                          DropdownMenuItem<String>(
                            value: 'Home',
                            child:Row(
                              children: [
                                Icon(Icons.home_rounded,color:Colors.white),
                                Text('Home',style:TextStyle(fontSize:8)),
                              ],
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Contact us',
                            child: Row(
                              children: [
                                Icon(Icons.phone_android,color:Colors.white),
                                Text('Contact us',style:TextStyle(fontSize:8)),
                              ],
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Log out',
                            child: Row(
                              children: [
                                Icon(Icons.logout,color:Colors.white),
                                Text('Log out',style:TextStyle(fontSize: 8)),
                              ],
                            ),
                          ),

                        ]

                    )

                ) //
              ],
            ),
          ),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/aslibackhome.jpg'),
              fit: BoxFit.fill),

        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(

              children: [
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child: Container(
                    margin:EdgeInsets.only(left:0),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              Container(
                                height:400,
                                width:194,
                               child:Padding(
                                 padding: const EdgeInsets.only(left:0),
                                 child: Column(
                                   children: [
                                     Container(
                                       margin:EdgeInsets.only(left:0,right:0),
                                       height:180,
                                       width:192,
                                       child:Image.asset('assets/images/cloud.png',fit:BoxFit.fill),
                                     ),
                                     Container(
                                       margin:EdgeInsets.only(top:12),
                                       height:200,
                                       width:190,
                                       child :Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: ListWheelScrollView(
                                           itemExtent: 130,
                                           children: [
                                             Container(
                                               width: double.infinity,
                                               decoration : BoxDecoration(
                                                 color:Colors.white,
                                                 borderRadius: BorderRadius.circular(18),
                                               ),
                                               child:Column(
                                                 children: [
                                                   Container(
                                                     height:88,
                                                       child: InkWell(
                                                           onTap:(){
                                                             Navigator.push(context,MaterialPageRoute(builder:(context)=>setting()));
                                                           },
                                                           child: Image.asset('assets/images/zoo1.png'))),
                                                   Container(
                                                       child: Text('Settings',style:TextStyle(fontSize:18,color:Colors.black,fontFamily:'font6',fontWeight: FontWeight.w600)))
                                                 ],
                                               ),
                                             ),
                                             Container(
                                               width: double.infinity,
                                               decoration : BoxDecoration(
                                                 color:Colors.white,
                                                 borderRadius: BorderRadius.circular(18),
                                               ),
                                               child:Column(
                                                 children: [
                                                   InkWell(
                                                     onTap:(){
                                                       Navigator.push(context,MaterialPageRoute(builder:(context)=>help()));
                                                     },
                                                     child: Container(
                                                       height:88,
                                                       child:Image.asset('assets/images/ra1.png'),
                                                     ),
                                                   ),
                                                   Container(
                                                     child:Text('Help',style:TextStyle(fontSize:18,color:Colors.black,fontFamily:'font6',fontWeight: FontWeight.w600)),
                                                   )
                                                 ],
                                               )
                                             ),
                                             Container(
                                               width: double.infinity,
                                               decoration : BoxDecoration(
                                                 color:Colors.white,
                                                 borderRadius: BorderRadius.circular(18),
                                               ),
                                               child:Column(
                                                 children: [
                                                   Container(
                                                     margin:EdgeInsets.only(top:6),
                                                     height:65,
                                                     child:InkWell(
                                                         onTap:(){
                                                           Navigator.push(context,MaterialPageRoute(builder:(context)=>map()));
                                                         },
                                                         child: Image.asset('assets/images/blue-print.png')),
                                                   ),
                                                   Container(
                                                     margin:EdgeInsets.only(top:20),
                                                       child: Text('Map',style:TextStyle(fontSize:18,color:Colors.black,fontFamily:'font6',fontWeight: FontWeight.w600))),
                                                 ],
                                               ),
                                             ),
                                             Container(
                                               width: double.infinity,
                                               decoration : BoxDecoration(
                                                 color:Colors.white,
                                                 borderRadius: BorderRadius.circular(18),
                                               ),
                                               child:Column(
                                                 children: [
                                                   Container(
                                                     margin:EdgeInsets.only(top:5),
                                                     height:80,
                                                     child:InkWell(
                                                         onTap:(){
                                                           Navigator.push(context,MaterialPageRoute(builder:(context)=>games()));
                                                         },
                                                         child: Image.asset('assets/images/game-control.png')),
                                                   ),
                                                   Container(
                                                     margin:EdgeInsets.only(top:4),
                                                       child: Text('Games',style:TextStyle(fontSize:21,color:Colors.black,fontFamily:'font6',fontWeight: FontWeight.w600)))
                                                 ],
                                               )
                                             ),
                                             Container(
                                               width: double.infinity,
                                               decoration : BoxDecoration(
                                                 color:Colors.white,
                                                 borderRadius: BorderRadius.circular(18),
                                               ),
                                               child:Column(
                                                 children: [
                                                   InkWell(
                                                     onTap:(){
                                                     Navigator.push(context,MaterialPageRoute(builder:(context)=>shop()));
                                             },
                                                     child: Container(
                                                       margin:EdgeInsets.only(top:5),
                                                       height:80,
                                                       child:Image.asset('assets/images/laptop.png'),


                                                     ),
                                                   ),
                                                   Container(
                                                     margin:EdgeInsets.only(top:8),
                                                     child:Text('Shop',style:TextStyle(fontSize:18,color:Colors.black,fontFamily:'font6',fontWeight: FontWeight.w600))
                                                   ),
                                                 ],
                                               ),
                                             ),
                                             Container(
                                               width: double.infinity,
                                               decoration : BoxDecoration(
                                                 color:Colors.white,
                                                 borderRadius: BorderRadius.circular(18),
                                               ),
                                               child:Column(
                                                 children: [
                                                   Container(
                                                     margin:EdgeInsets.only(top:10),
                                                     height:70,
                                                     child:InkWell(
                                                         onTap:(){
                                                           Navigator.push(context,MaterialPageRoute(builder:(context)=>quiz()));
                                                         },
                                                         child: Image.asset('assets/images/quiz.png')),
                                                   ),
                                                   Container(
                                                     margin:EdgeInsets.only(top:10),
                                                     child:Text('Quiz',style:TextStyle(fontSize:18,color:Colors.black,fontFamily:'font6',fontWeight: FontWeight.w600))
                                                   )
                                                 ],
                                               )
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                              ),
                             Container(
                                margin:EdgeInsets.only(left: 0,top:66),
                                height:400,
                                width:185,
                                 child:Image.asset('assets/images/newdecoration.png',fit:BoxFit.cover),


                             ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child: Container(
                    height:230,
                    width:700,
                    child:Image.asset('assets/images/flowchart.png',fit:BoxFit.fill),
                  ),
                ),
                Container(
                  height:300,
                  width:410,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:EdgeInsets.only(right:12),
                            width:120,
                            height:300,
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(55),
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.black12,
                                )
                              ]
                            ),
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>info()));
                            },
                                    child: CircleAvatar(
                                      backgroundImage:AssetImage('assets/images/questionmark.png'),
                                      radius:50,
                                    ),
                                  ),
                                  Container(
                                    height:5,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color:Colors.white,
                                      borderRadius: BorderRadius.circular(21),
                                    ),


                                  ),
                                  Container(
                                    height:130,
                                    width:200,
                                    decoration: BoxDecoration(
                                      color:Colors.white,
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
                                     bottomRight: Radius.circular(50)),
                                    ),
                                    child:Container(
                                      margin:EdgeInsets.only(top:0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Image.asset('assets/images/informtion.png'),
                                      ),
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.only(right:12),
                            width:120,
                            height:300,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(55),
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.black12,
                                    )
                                  ]
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>consti()));
                              },
                                      child: Center(
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage('assets/images/law.png'),
                                          radius:50,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height:5,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(21),
                                        )

                                    ),
                                    Container(
                                        height:130,
                                        width:200,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
                                              bottomRight: Radius.circular(50)),
                                        ),
                                      child:Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                            margin:EdgeInsets.only(bottom:2),
                                            child: Image.asset('assets/images/consti2-removebg-preview.png')),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ),
                          Container(
                            margin:EdgeInsets.only(right:12),
                            width:120,
                            height:300,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(55),
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.black12,
                                    )
                                  ]
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>parliament()));
                              },
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage('assets/images/bin.jpg'),
                                        radius:50,
                                      ),
                                    ),
                                    Container(
                                        height:5,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(21),
                                        )

                                    ),
                                    Container(
                                        height:130,
                                        width:200,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
                                              bottomRight: Radius.circular(50)),
                                        ),
                                       child:Padding(
                                         padding: const EdgeInsets.all(2.5),
                                         child: Container(
                                           margin:EdgeInsets.only(bottom:12.5),
                                             child: Image.asset('assets/images/joke.png')),
                                       ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          Container(
                            margin:EdgeInsets.only(right:12),
                            width:120,
                            height:300,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(55),
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.black12,
                                    )
                                  ]
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap : (){
                                        Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>court()));
                              },
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage('assets/images/court.png'),
                                        radius:50,
                                      ),
                                    ),
                                    Container(
                                        height:5,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(21),
                                        )

                                    ),
                                    Container(
                                        height:130,
                                        width:200,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
                                              bottomRight: Radius.circular(50)),
                                        ),
                                      child:Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Container(
                                            margin:EdgeInsets.only(bottom:24),
                                              child: Image.asset('assets/images/dil.png')),
                                        ),
                                      ),

                                    ),
                                  ],
                                ),
                              )
                          ),
                          Container(
                              margin:EdgeInsets.only(right:12),
                              width:120,
                              height:300,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(55),
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.black12,
                                    )
                                  ]
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>leader()));
                              },
                                      child: CircleAvatar(
                                        backgroundImage:AssetImage('assets/images/teamwork.png'),
                                        radius:50,
                                      ),
                                    ),
                                    Container(
                                        height:5,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(21),
                                        )

                                    ),
                                    Container(
                                        height:130,
                                        width:200,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
                                              bottomRight: Radius.circular(50)),
                                        ),
                                      child:Container(
                                        margin:EdgeInsets.only(bottom:10),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset('assets/images/gaa.png'),
                                          )),

                                    ),
                                  ],
                                ),
                              )
                          ),
                          Container(
                              margin:EdgeInsets.only(right:12),
                              width:120,
                              height:300,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(55),
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.black12,
                                    )
                                  ]
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap:(){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>lawyer()));
                              },
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage('assets/images/judge.png'),
                                        radius:50,
                                      ),
                                    ),
                                    Container(
                                        height:5,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(21),
                                        )

                                    ),
                                    Container(
                                        height:130,
                                        width:200,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
                                              bottomRight: Radius.circular(50)),
                                        ),
                                      child:Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset('assets/images/kako.png'),
                                      )

                                    ),
                                  ],
                                ),
                              )
                          ),
                          Container(
                              margin:EdgeInsets.only(right:12),
                              width:120,
                              height:300,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(55),
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.black12,
                                    )
                                  ]
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap:(){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>law()));
                              },
                                      child: CircleAvatar(
                                        backgroundImage:AssetImage('assets/images/laww.png'),
                                        radius:50,
                                      ),
                                    ),
                                    Container(
                                        height:5,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(21),
                                        )

                                    ),
                                    Container(
                                        height:130,
                                        width:200,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
                                              bottomRight: Radius.circular(50)),
                                        ),
                                      child:Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            margin:EdgeInsets.only(bottom:4),
                                            child: Image.asset('assets/images/jho.png')),
                                      )

                                    ),
                                  ],
                                ),
                              )
                          ),
                          Container(
                              margin:EdgeInsets.only(right:12),
                              width:120,
                              height:300,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(55),
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.black12,
                                    )
                                  ]
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>end()));
                              },
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage('assets/images/i.jpg'),
                                        radius:50,
                                      ),
                                    ),
                                    Container(
                                        height:5,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(21),
                                        )

                                    ),
                                    Container(
                                        height:130,
                                        width:200,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
                                              bottomRight: Radius.circular(50)),
                                        ),
                                      child:Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          margin:EdgeInsets.only(bottom:20),
                                            child: Image.asset('assets/images/jingoli.png')),
                                      ),

                                    ),
                                  ],
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  height:200,
                  width:600,
                 child:SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Container(
                           height:190,
                           width:300,
                           color:Colors.purpleAccent,
                           child:Image.asset('assets/images/1.jpg',fit:BoxFit.cover),
                         ),
                         Container(
                           margin:EdgeInsets.only(left:12),
                           height:190,
                           width:300,
                           color:Colors.purpleAccent,
                           child:Image.asset('assets/images/2.jpg',fit:BoxFit.fill),
                         ),
                         Container(
                           margin:EdgeInsets.only(left:12),
                           height:190,
                           width:300,
                           color:Colors.purpleAccent,
                           child:Image.asset('assets/images/roro.jpg',fit:BoxFit.fill),
                         ),
                         Container(
                           margin:EdgeInsets.only(left:12),
                           height:190,
                           width:300,
                           color:Colors.purpleAccent,
                           child:Image.asset('assets/images/amul.jpg',fit:BoxFit.fill)
                         ),
                         Container(
                           margin:EdgeInsets.only(left:12),
                           height:190,
                           width:300,
                           color:Colors.purpleAccent,
                           child: Image.asset('assets/images/g.png',fit:BoxFit.fill),
                         ),
                         Container(
                           margin:EdgeInsets.only(left:12),
                           height:190,
                           width:300,
                           color:Colors.purpleAccent,
                           child: Image.asset('assets/images/d.jpg',fit:BoxFit.fill),
                         ),
                       ],
                     ),
                   ),
                 ),
                ),
                Container(
                  margin:EdgeInsets.only(bottom:15),
                  height:8,
                  width:100,
                  decoration:BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(top:6),
                  height:400,
                  width:600,
                  child:Column(
                    children: [
                      Container(
                        height:50,
                        width : 600,
                        decoration:BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.circular(21),
                        ),
                        child:Center(child: Text('About Us',style:TextStyle(fontSize:30,fontFamily: 'font2'
                        ,fontWeight: FontWeight.bold))),
                      ),
                      Container(
                        margin:EdgeInsets.only(top:6),
                        child:Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height:325,
                                  width:158,
                                  decoration:BoxDecoration(
                                    image:DecorationImage(
                                      image: AssetImage('assets/images/go.jpg'),
                                      fit:BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(21),
                                   color:Colors.white,
                                    ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top:12),
                                        child: CircleAvatar(
                                          backgroundImage:AssetImage('assets/images/do.png'),
                                            backgroundColor: Colors.white,
                                            radius:38,
                                        ),
                                      ),
                                      Container(
                                        margin:EdgeInsets.only(top:9),
                                        height:225,
                                        width:166,
                                        child:Image.asset('assets/images/dono.png',fit:BoxFit.fill),
                                      )
                                    ],
                                  ),

                                ),
                                Container(
                                  margin:EdgeInsets.only(left:12),
                                  height:325,
                                  width:158,
                                  decoration:BoxDecoration(
                                    image:DecorationImage(
                                      image:AssetImage('assets/images/go.jpg'),
                                      fit:BoxFit.fill,
                                    ),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                  child:Column(
                                    children: [
                                      Container(
                                        margin:EdgeInsets.only(top:12),
                                        child:Container(
                                          height:74,
                                          width:74,
                                          decoration: BoxDecoration(
                                            color:Colors.white,
                                            borderRadius: BorderRadius.circular(74),
                                            image:DecorationImage(
                                              image:AssetImage('assets/images/flutter.png'),
                                              fit:BoxFit.contain,
                                            )
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:EdgeInsets.only(top:9),
                                        height:229,
                                        width:170,
                                        child:Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Image.asset('assets/images/rinko1.png',fit:BoxFit.fill),
                                        ),
                                      )
                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ),
                        )
                      )
                     ],
                  )
                ),
                Container(
                  margin:EdgeInsets.only(bottom:15),
                  height:8,
                  width:100,
                  decoration:BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height:350,
                      width:600,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(560),bottomLeft: Radius.circular(10)
                        ,bottomRight: Radius.circular(10),topRight: Radius.circular(35)),
                        image:DecorationImage(
                          image:AssetImage('assets/images/rino.png'),
                            fit:BoxFit.fill,
                        ),
                      ),
                      child:Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:AssetImage('assets/images/loo.png'),
                                  radius:55,
                                ),
                                Container(
                                  margin:EdgeInsets.only(left:68.8,bottom:60),
                                  height:50,
                                  width:165,
                                  decoration:BoxDecoration(
                                    color:Colors.purpleAccent,
                                    borderRadius: BorderRadius.circular(21),
                                  ),
                                  child:Center(
                                    child: Text('Objective of KOL&O', style:TextStyle(fontSize:14,fontFamily:'font5',
                                    color:Colors.white)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ),
                  ],
                ),
                Container(
                  height:400,
                  width:600,
                  child:Row(
                    children: [
                      Container(
                        height:400,
                        width:160,
                        child:Image.asset('assets/images/man1.png',fit:BoxFit.cover),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin:EdgeInsets.only(left:2),
                                  height:250,
                                  width:178,
                                  child:Image.asset('assets/images/clip1.jpg',fit:BoxFit.fill),
                                ),
                                Container(
                                  margin:EdgeInsets.only(left:2,top:20),
                                  height:250,
                                  width:178,
                                  child:TextField(
                                    decoration: InputDecoration(
                                      hintText:'        FeedBack',
                                      focusedBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(0),
                                        borderSide: BorderSide(
                                          color:Colors.transparent,
                                        ),
                                      )
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}