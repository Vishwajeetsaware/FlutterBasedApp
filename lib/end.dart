import 'package:flutter/material.dart';

import 'Frontpage.dart';
class end extends StatelessWidget{
  double screenHeight = 0;
  double screenWidth = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
                 return Scaffold(
                   appBar: AppBar(
                     title:Row(
                       children: [
                         Text('The End', style:TextStyle(fontSize: 28,fontFamily:'font2',fontWeight:FontWeight.bold,color:Colors.white )),
                         Container(
                           margin:EdgeInsets.only(left:15),
                           height:50,
                           width:50,
                           child:Image.asset('assets/images/conclusion.png'),
                         )

                       ],
                     ),
                     backgroundColor: Colors.purpleAccent,
                     elevation: 10,
                   ) ,
                   body:Container(
                     decoration:BoxDecoration(
                       image:DecorationImage(
                         image:AssetImage('assets/images/go.jpg'),fit:BoxFit.fill
                       )
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Center(
                         child: Stack(
                           children: [
                             Container(
                               height:1200,
                               width:400,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(290)),
                                 image:DecorationImage(image: AssetImage('assets/images/nobo.jpg'),fit:BoxFit.cover)
                               ),
                               child:Center(
                                 child: Container(
                                   margin: EdgeInsets.only(bottom:120),
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text("As I conclude this comprehensive course, each slide we've journeyed through stands as a testament to the depth of knowledge and understanding gained. From the foundational concepts to the intricate details, every section covered has contributed to a holistic grasp of the subject matter. With the completion of these slides, it's evident that the course's objectives have been met, and the learning outcomes achieved resonate with clarity. Armed with this newfound expertise, I am equipped to navigate this field confidently. This journey has been enlightening, and I am poised to apply this learning in practical scenarios. As the final slide fades into view, it signifies not just the end of a course but the commencement of a new chapter where this knowledge finds its purpose and relevance.",
                                     style:TextStyle(fontSize:15,fontWeight:FontWeight.bold,fontFamily:'font2',color:Colors.white)),
                                   ),
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(top:508),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Container(
                                     margin:EdgeInsets.only(top:30),
                                     height:130,
                                     width:130,
                                     child:InkWell(
                                       onTap:(){
                                         Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Frontpage()));
                                       },
                                       child: Image.asset('assets/images/chuchu.png',
                                       fit:BoxFit.cover),
                                     )
                                   ),
                                   Container(
                                     margin:EdgeInsets.only(top:4),
                                     height:141,
                                     width:141,
                                     decoration:BoxDecoration(
                                       borderRadius: BorderRadius.circular(181),
                                       image:DecorationImage(image: AssetImage('assets/images/certification.png'),fit:BoxFit.cover)
                                     )
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   )
                 );
  }

}