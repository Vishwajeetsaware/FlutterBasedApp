import 'package:flutter/material.dart';
import 'package:trylaw/Frontpage.dart';
class consti extends StatelessWidget{
  double screenHeight = 0;
  double screenWidth = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
        title:Row(
          children: [
            Text('Indian Constitution', style:TextStyle(color: Colors.white,fontSize:30,
            fontFamily: 'font2',fontWeight:FontWeight.bold)),
            Container(
              margin:EdgeInsets.only(bottom:4,left:5),
              height:45,
              width:45,
              child:Image.asset('assets/images/cake.png')
            )
          ],
        ),
        backgroundColor: Colors.purpleAccent,
        elevation:10,
      ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/images/go.jpg'),
            fit:BoxFit.fill,
          )
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height:60,
                  width:655,
                  decoration:BoxDecoration(
                    color:Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(21),
                  ),
                  child:Center(
                    child: Text('What is Indian Constitution ?',
                    style:TextStyle(fontSize: 21,fontFamily: 'font6',fontWeight: FontWeight.w900)),
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin:EdgeInsets.only(top:12),
                      height:7215,
                      width:160,
                      child:Text('The Constitution of India was formed after gaining independence from British rule in 1947.'

                          'The Constituent Assembly, established in 1946, was tasked with drafting the Constitution for the newly independent nation.'
                          'The assembly consisted of elected representatives from various regions and communities, including leaders such as B.R. Ambedkar, Jawaharlal Nehru, Sardar Patel, and many others.'

                          'The drafting process took almost three years, during which the members of the Constituent Assembly discussed and debated various aspects of the Constitution.'
                          'They drew inspiration from multiple sources, including the constitutions of various countries, legal precedents, and philosophical principles.'

                          'On November 26, 1949, the Constituent Assembly formally adopted the Constitution of India.'
                          'However, it came into effect on January 26, 1950, marking the countrys official transition to a republic.'
                          ' This date is celebrated annually as Republic Day in India.'

                          'The Constitution of India is a comprehensive document that outlines the framework of the government, fundamental rights, directive principles, the structure of governance, and the duties of citizens. Its regarded for its extensive nature and its ability to adapt to changing times through amendments while maintaining the core principles of democracy, equality, and justice for all citizens.',
                      style:TextStyle(fontFamily: 'font2',fontSize:30,fontWeight:FontWeight.bold,
                      color:Colors.black)),

                    ),
                    Container(
                      margin:EdgeInsets.only(left:4),
                      height:7215,
                      width: 170,
                      child:Column(
                        children: [
                          CircleAvatar(
                            radius:120,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/images/b.jpg'),
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/images/c.jpg'),
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                            backgroundImage: AssetImage('assets/images/dig.png'),
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                              backgroundImage: AssetImage('assets/images/10.jpg')
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                              backgroundImage: AssetImage('assets/images/11.jpg')
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                              backgroundImage: AssetImage('assets/images/12.jpg')
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                              backgroundImage: AssetImage('assets/images/13.jpg')
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                              backgroundImage: AssetImage('assets/images/14.jpg')
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                              backgroundImage: AssetImage('assets/images/15.jpg')
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                            backgroundImage:AssetImage('assets/images/rony.jpg')
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                            backgroundImage:AssetImage('assets/images/sony.jpg')
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                            backgroundImage:AssetImage('assets/images/l.jpg')
                          ),
                          Container(
                            height:340,
                          ),
                          CircleAvatar(
                            radius:120,
                            backgroundImage:AssetImage('assets/images/koka.jpg')
                          ),

                        ],
                      )
                    )
                  ],
                ),
                Container(
                  height:80,
                  width:200,
                  child:ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                      ),onPressed:(){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Frontpage()));
                  },
                  child:Text('Done',style:TextStyle(fontSize: 30,color:Colors.white,
                  fontFamily: 'font2'))),
                )

              ],
            ),
          ),
        ),
      ),

    );
  }

}