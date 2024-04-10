import 'package:flutter/material.dart';
import 'package:trylaw/Frontpage.dart';
class court extends StatelessWidget{
  double screenHeight = 0;
  double screenWidth = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar : AppBar(
        title:Row(
          children: [
            Text('Indian Judiciary',style:TextStyle(fontSize: 28,fontFamily:'font2',fontWeight: FontWeight.bold,color:Colors.white)),
            Container(
              margin:EdgeInsets.only(left:8,bottom:3),
              height:38,
              width:38,
              child:Image.asset('assets/images/coco.png'),
            )
          ],
        ),
        backgroundColor: Colors.purpleAccent,
          elevation: 10,
      ),
      body:Container(
        decoration:BoxDecoration(
          image:DecorationImage(image: AssetImage('assets/images/go.jpg'),fit:BoxFit.fill)
        ),
        child: SingleChildScrollView(
          scrollDirection:Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width:600,
                  height:80,
                  decoration:BoxDecoration(
                      color:Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(21)
                  ),
                  child:Center(child: Text('What is Indian Judiciary ?',style:TextStyle(fontSize: 18,fontFamily: 'font6',color:Colors.black)))
                ),
                Container(
                  margin : EdgeInsets.only(top:10),
                  width:600,
                  height:420,
                  color:Colors.cyanAccent,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height:390,
                          width:200,
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  margin:EdgeInsets.only(top:12),
                                  height:168,
                                  width:168,
                                  decoration: BoxDecoration(
                                    color:Colors.yellowAccent,
                                    borderRadius: BorderRadius.circular(80),
                                    image:DecorationImage(
                                      image:AssetImage('assets/images/susa.jpg'),
                                      fit:BoxFit.cover,
                                    )
                                  ),
                                ),
                                Container(
                                  margin:EdgeInsets.only(top:8),
                                  height:185,
                                  width:250,
                                  decoration: BoxDecoration(
                                    color:Colors.deepOrange,
                                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(89),bottomLeft: Radius.circular(89) ),

                                  ),
                                )
                              ],
                            ),
                          ),
                          decoration:BoxDecoration(
                            color:Colors.white,
                            borderRadius:BorderRadius.circular(150),
                          )
                        ),
                        Container(
                          margin:EdgeInsets.only(left:10),
                          height:350,
                          width:130,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(21),
                          ),
                          child:GridView.count(
                            crossAxisCount: 1,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height:100,
                                  width:100,
                                  color:Colors.yellowAccent,
                                    child:Image.asset('assets/images/dadi.jpg',fit:BoxFit.fill)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height:100,
                                  width:100,
                                  color:Colors.deepOrange,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height:100,
                                  width:100,
                                  color:Colors.green.shade900,
                                ),
                              )
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ),
                    Container(
                      margin : EdgeInsets.only(top:10),
                      width:600,
                      height:300,
                      decoration:BoxDecoration(
                        image:DecorationImage(
                          image:AssetImage('assets/images/jomo.png'),
                          fit:BoxFit.fill
                        ),
                        color:Colors.deepOrange,
                      ),
                      child:Stack(
                        children: [
                          Container(
                            height:170,
                            width:210,
                            child:Image.asset('assets/images/dilbi.png',fit:BoxFit.cover),
                          ),

                        ],
                      ),
                    ),
                Container(
                  margin : EdgeInsets.only(top:10),
                  width:600,
                  height:560,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("The Indian judiciary system is a complex yet well-defined structure. It comprises various levels and types of courts that function at different levels across the country. Here's an overview of its formation:"
                    ,style:TextStyle(color:Colors.black,fontSize: 28,fontWeight: FontWeight.w400)),
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(top:10),
                  height:300,
                  width:600,
                  child:Image.asset('assets/images/judi.jpg',fit:BoxFit.fill)
                ),
                Container(
                  margin:EdgeInsets.only(top:10),
                  height:2000,
                  width:600,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Structure:"
                          "Supreme Court of India:"

                          "Positioned at the top of the judicial hierarchy."
                          "It consists of a Chief Justice and a maximum of 34 judges."
                          "It acts as the guardian of the Constitution and the highest appellate court in the country."
                          "High Courts:"

                          "Each state in India has its own High Court."
                          "High Courts handle cases within their respective states and are courts of appeal for cases from subordinate courts in those states."
                          "Subordinate Courts:"

                          "Beneath the High Courts are District Courts and other lower courts."
                          "District Courts exist in each district and handle civil and criminal cases within their jurisdiction.",
                      style:TextStyle(color:Colors.black,fontSize:28,fontWeight:FontWeight.w400)),
                    ),
                ),
                Container(
                  margin:EdgeInsets.only(top:10),
                  height:300,
                  width:600,
                  child:Image.asset('assets/images/ringo.jpg',fit:BoxFit.fill)
                ),
                Container(
                  margin:EdgeInsets.only(top:10),
                  height:2800,
                  width:600,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Formation:"
                        "Appointment:"

                        "Judges of the Supreme Court are appointed by the President of India based on recommendations from the Collegium system (a body of senior judges)."
                    "High Court judges are appointed by the President after consulting with the Chief Justice of India and the Governor of the respective state."
                "Independence:"

                "The judiciary in India is independent of the legislative and executive branches to ensure fairness and impartiality in its functioning."
                "Jurisdiction:"

                "Each court has its own defined jurisdiction and powers."
                "Roles:"

                "The judiciary interprets laws, safeguards the Constitution, resolves disputes, and ensures justice is served."
                "Constitutional Provisions:"

                "The structure and functioning of the Indian judiciary are primarily guided by the Constitution of India, which outlines the powers, composition, and duties of the courts." ,style:TextStyle(color: Colors.black,fontSize:28,fontWeight: FontWeight.w400)),
                  )
           ),
                Container(
                  margin: EdgeInsets.only(top:10),
                  height:80,
                  width:600,
                  decoration:BoxDecoration(
                      color:Colors.yellowAccent,
                  borderRadius:BorderRadius.circular(21)
                ),
                  child:Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Some Special Facts about Indian Judiciary !',style:TextStyle(fontSize: 18,fontFamily: 'font6',color: Colors.black)),
                  ))
                ),
                Container(
                  margin: EdgeInsets.only(top:10),
                  height:3000,
                  width:600,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Special Courts:"
                        "Apart from the regular hierarchy, there are special courts established to handle specific types of cases or matters like family courts, tribunals, and special courts for certain laws such as the National Green Tribunal, National Company Law Tribunal, etc."

                        "Evolution:"
                        "The Indian judiciary has evolved over time through various judgments, amendments to laws, and changes in the constitutional framework to adapt to the evolving needs of society, ensuring justice for its citizens."

                        "Challenges:"
                        "The Indian judiciary, while striving to uphold justice, faces challenges such as a large backlog of cases, infrastructure deficiencies, and the need for continuous reforms to enhance efficiency and access to justice for all."

                        "Overall, the Indian judiciary system is designed to uphold the rule of law, protect individual rights, and ensure justice for the people of India.",
                    style:TextStyle(color:Colors.black,fontSize: 28,fontWeight: FontWeight.w400)),
                  ) ,
                ),
                Container(
                  margin: EdgeInsets.only(top:12),
                  height:100,
                  width:300,
                  child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                      ),onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Frontpage()));
                  }, child: Text("Done",style:TextStyle(fontSize: 28,fontFamily: 'font2',color:Colors.white))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}