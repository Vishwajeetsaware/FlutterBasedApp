import 'package:flutter/material.dart';
class shop extends StatelessWidget{
  double screenHeight = 0;
  double screenWidth = 0;
  var color = [Colors.yellowAccent,
  Colors.deepOrange,
   Colors.cyan,
  Colors.purpleAccent,
  Colors.cyanAccent,
  Colors.amberAccent,
  Colors.orange,
  Colors.grey,
  Colors.lightGreenAccent,
  Colors.deepOrangeAccent];
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
        title:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Shop',style:TextStyle(fontSize: 30,fontFamily:'font2',fontWeight: FontWeight.w900,color:Colors.white)),
              Container(
                margin:EdgeInsets.only(left:4),
                height:45,
                width:45,
                child:Image.asset('assets/images/online-shopping.png'),
              )
            ],
          ),
        ),
        backgroundColor:Colors.purpleAccent,
        elevation:10,
      ),
      body:Container(
          decoration:BoxDecoration(
              image:DecorationImage(image: AssetImage('assets/images/go.jpg'),fit:BoxFit.fill)
          ),
        child: GridView.count( crossAxisCount: 3,
            children:[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height:100,
                  width:100,
                  decoration:BoxDecoration(
                    color:color[0],
                    borderRadius:BorderRadius.circular(10),
                  ),
                  child:Column(
                    children: [
                      Container(
                        height:70,
                        child:Image.asset('assets/images/stack-of-books.png'),
                      ),
                      Container(
                        child:Text('Books',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      color:color[1],
                      borderRadius:BorderRadius.circular(10),
                    ),
                  child:Column(
                    children: [
                      Container(
                        margin:EdgeInsets.only(top:4),
                        height:72,
                        child:Image.asset('assets/images/clothes-hanger.png')
                      ),
                      Container(
                        child:Text('Clothes',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      color:color[2],
                      borderRadius:BorderRadius.circular(10),
                    ),
                  child:Column(
                    children: [
                      Container(
                        height:72,
                        child:Image.asset('assets/images/toys.png')
                      ),
                      Container(
                        child:Text('Toys',style:TextStyle(fontSize:14,fontFamily: 'font6',color:Colors.black87))
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      color:color[3],
                      borderRadius:BorderRadius.circular(10),
                    ),
                  child:Column(
                    children: [
                      Container(
                        height:70,
                        child:Image.asset('assets/images/diet.png')
                      ),
                      Container(
                        child:Text("Vegetables",style:TextStyle(fontSize:14,fontFamily: 'font6',color:Colors.black87))
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      color:color[4],
                      borderRadius:BorderRadius.circular(10),
                    ),
                  child:Column(
                    children: [
                      Container(
                        height:70,
                        child:Image.asset('assets/images/fast-food.png')
                      ),
                      Container(
                        child:Text('Fast-Food',style:TextStyle(fontSize:14,fontFamily: 'font6',color:Colors.black87))
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      color:color[5],
                      borderRadius:BorderRadius.circular(10),
                    ),
                  child:Column(
                    children: [
                      Container(
                        height:70,
                        child:Image.asset('assets/images/stationary.png')
                      ),
                      Container(
                        child:Text('Stationary',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      color:color[6],
                      borderRadius:BorderRadius.circular(10),
                    ),
                  child:Column(
                    children: [
                      Container(
                        margin:EdgeInsets.only(top:4),
                        height:70,
                        child:Image.asset('assets/images/snack.png')
                      ),
                      Container(
                        child:Text('Snacks',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      color:color[7],
                      borderRadius:BorderRadius.circular(10),
                    ),
                  child:Column(
                    children: [
                      Container(
                        margin:EdgeInsets.only(top:4),
                        height:70,
                        child:Image.asset('assets/images/gadgets.png')
                      ),
                      Container(
                        child:Text('Gadgets',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      color:color[8],
                      borderRadius:BorderRadius.circular(10),
                    ),
                  child:Column(
                    children: [
                      Container(
                        margin:EdgeInsets.only(top:4),
                        height:72,
                        child:Image.asset('assets/images/school-bag.png')
                      ),
                      Container(
                        child:Text('Bags',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height:100,
                    width:100,
                    decoration:BoxDecoration(
                      color:color[9],
                      borderRadius:BorderRadius.circular(10),
                    ),
                  child:Column(
                    children: [
                      Container(
                        height:70,
                        child:Image.asset('assets/images/ice-cream.png')
                      ),
                      Container(
                        margin:EdgeInsets.only(top:2),
                        child:Text('Ice-Cream',style:TextStyle(fontSize: 14,fontFamily: 'font6',color:Colors.black87))
                      )
                    ],
                  ),

                ),
              )
            ]

        ),
      )
    );
  }
}