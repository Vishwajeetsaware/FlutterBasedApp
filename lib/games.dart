import 'package:flutter/material.dart';
class games extends StatelessWidget{
  var colors = [Colors.yellowAccent,
  Colors.lightGreenAccent,
    Colors.cyanAccent,
    Colors.grey,
    Colors.lightBlue,
    Colors.redAccent,
    Colors.deepOrangeAccent,
  Colors.purpleAccent,
  Colors.tealAccent,
  Colors.lightGreen,
  Colors.lime,
  Colors.deepOrange,
  Colors.deepPurpleAccent,
  Colors.pinkAccent,
  Colors.amber];
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar:AppBar(
          title:Row(
            children: [
              Text('Games',style:TextStyle(fontSize: 30,fontFamily: 'font2',color:Colors.white,fontWeight: FontWeight.w900)),
              Container(
                margin:EdgeInsets.only(left:10),
                height:50,
                width:50,
                child:Image.asset('assets/images/game-controller.png')
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
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[9],
                    ),
                    child:Column(
                      children: [
                        Container(
                          margin:EdgeInsets.only(top:4),
                          height:65,
                          child:Image.asset('assets/images/v.png'),
                        ),
                        Container(
                            margin:EdgeInsets.only(top:4),
                            child:Text('Cards',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[10],
                    ),
                    child:Column(
                      children: [
                        Container(
                          margin:EdgeInsets.only(top:4),
                          height:65,
                          child:Image.asset('assets/images/w.png'),
                        ),
                        Container(
                            margin:EdgeInsets.only(top:5),
                            child:Text('Space Invaders',style:TextStyle(fontSize: 12,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[11],
                    ),
                    child:Column(
                      children: [
                        Container(
                          margin:EdgeInsets.only(top:4),
                          height:65,
                          child:Image.asset('assets/images/dice.png'),
                        ),
                        Container(
                            margin:EdgeInsets.only(top:4),
                            child:Text('Roll Dice',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[12],
                    ),
                    child:Column(
                      children: [
                        Container(
                          height:70,
                          child:Image.asset('assets/images/bird.png'),
                        ),
                        Container(
                            child:Text('Kiwi Hunter',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[13],
                    ),
                    child:Column(
                      children: [
                        Container(
                          margin:EdgeInsets.only(top:2),
                          height:60,
                          child:Image.asset('assets/images/boardgames.png'),
                        ),
                        Container(
                            margin:EdgeInsets.only(top:10),
                            child:Text('Snake & Ladder',style:TextStyle(fontSize: 12,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[14],
                    ),
                    child:Column(
                      children: [
                        Container(
                          margin:EdgeInsets.only(top:2),
                          height:70,
                          child:Image.asset('assets/images/jigsaw.png'),
                        ),
                        Container(
                            child:Text('Cross Puzzle',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[0],
                    ),
                    child:Column(
                      children: [
                        Container(
                          height:70,
                          child:Image.asset('assets/images/m.png'),
                        ),
                        Container(
                            child:Text('Mobile Legends',style:TextStyle(fontSize: 12,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[1],
                    ),
                    child:Column(
                      children: [
                        Container(
                          height:70,
                          child:Image.asset('assets/images/n.png'),
                        ),
                        Container(
                            child:Text('Crossy Road',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[2],
                    ),
                    child:Column(
                      children: [
                        Container(
                          height:70,
                          child:Image.asset('assets/images/o.png'),
                        ),
                        Container(
                            child:Text('Pokemon Go',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[3],
                    ),
                    child:Column(
                      children: [
                        Container(
                          height:70,
                          child:Image.asset('assets/images/p.png'),
                        ),
                        Container(
                            child:Text('Brawl Stars',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[4],
                    ),
                    child:Column(
                      children: [
                        Container(
                          height:70,
                          child:Image.asset('assets/images/q.png'),
                        ),
                        Container(
                            child:Text('Duty Trigger',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[5],
                    ),
                    child:Column(
                      children: [
                        Container(
                          height:70,
                          child:Image.asset('assets/images/s.png'),
                        ),
                        Container(
                            child:Text('Temple Run',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[6],
                    ),
                    child:Column(
                      children: [
                        Container(
                          height:70,
                          child:Image.asset('assets/images/r.png'),
                        ),
                        Container(
                            child:Text('Niantic',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[7],
                    ),
                    child:Column(
                      children: [
                        Container(
                          height:70,
                          child:Image.asset('assets/images/t.png'),
                        ),
                        Container(
                            child:Text('Pixel Run 3D',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color:colors[8],
                    ),
                    child:Column(
                      children: [
                        Container(
                          height:70,
                          child:Image.asset('assets/images/u.png'),
                        ),
                        Container(
                            child:Text('Dragon Ball',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                        )
                      ],
                    ),
                  ),
                ),







              ]
            )
          ),
        )
      );
  }

}