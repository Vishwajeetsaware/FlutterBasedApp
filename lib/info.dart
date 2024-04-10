import 'package:flutter/material.dart';

import 'Frontpage.dart';

class info extends StatelessWidget{
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
           Text('Info Page',style:TextStyle(fontSize:25,fontFamily:'font2',fontWeight:FontWeight.bold,color:Colors.white)),
           Container(
             width:12
           ),
           Container(
             child:CircleAvatar(
               radius:25,
             backgroundImage:AssetImage('assets/images/bulb.jpg'),),
           ),
         ],
       ),
           backgroundColor: Colors.purpleAccent,
     ),
     body:Container(
       decoration:BoxDecoration(
         image: DecorationImage(image: AssetImage('assets/images/go.jpg'),
        fit:BoxFit.cover ),
       ),
       child: Center(
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   margin:EdgeInsets.only(top:8),
                   height:130,
                   width:500,
                   decoration: BoxDecoration(
                     color:Colors.yellowAccent,
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(21),bottomRight: Radius.circular(21)),
                   ),

                   child:Center(
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           child: Text('   Information about how india got its '
                               'independence and how the law & order is established in India', style:TextStyle(fontFamily: 'font6',fontSize: 15,fontWeight: FontWeight.w600,
                           color:Colors.black),),
                         ),
                       )),


                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height:250,
                   width:450,
                   child: Image.asset('assets/images/azadi.jpg',
                       fit:BoxFit.fill),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   children: [
                     Container(
                       height:5500,
                       width:500,
                       child:Text('India gained independence from British colonial rule on August 15, 1947, after a long and arduous struggle for freedom that spanned several decades. The fight for independence was marked by various movements, protests, and the tireless efforts of leaders like Mahatma Gandhi, Jawaharlal Nehru, Sardar Vallabhbhai Patel, and many others.The Indian independence movement encompassed non-violent civil disobedience, boycotts, and protests against British rule, culminating in significant events such as the Salt March of 1930 and various movements for social and economic rights. Finally, the persistent efforts of the leaders and the collective will of the Indian populace led to India achieving its independence.'
                         'Post-independence, India established its law and order through the framing and adoption of the Constitution of India on January 26, 1950. The Constitution laid down the framework for a democratic republic, enshrining fundamental rights, the structure of government, and the separation of powers. It established the principles of justice, equality, and liberty for all citizens and outlined the functioning of the judiciary, legislature, and executive branches.'
                         'The legal system in India operates through a hierarchical structure, with the Supreme Court at the apex, followed by High Courts in states and subordinate courts at the district level. Laws are made by the Parliament at the center and by state legislatures at the state level. Additionally, India has various law enforcement agencies such as the police, tasked with maintaining law and order across the country.'
                         'While India gained independence through non-violent means, establishing law and order in such a diverse and populous country required ongoing efforts in governance, legislation, and the administration of justice, a process that continues to evolve and adapt to the changing needs of its people.',style:TextStyle(fontFamily: 'font2',fontSize: 33,fontWeight: FontWeight.w600,color:Colors.black),),),
                     Container(
                       height:80,
                       width:200,
                       margin:EdgeInsets.only(top:12),
                       child:ElevatedButton(
                         style:ElevatedButton.styleFrom(
                           backgroundColor: Colors.purpleAccent,
                         ),onPressed:(){
                         Navigator.pushReplacement(context,
                         MaterialPageRoute(builder:(context)=>Frontpage()));
                         },child:Text('Done',style:TextStyle(fontFamily:'font2',fontSize: 30,fontWeight: FontWeight.w200,
                       color:Colors.white),),),
                     )
                   ],
                 ),
               ),
             ],
           ),
         ),
       ),
     ),
   );
  }

}