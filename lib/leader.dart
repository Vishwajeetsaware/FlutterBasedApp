import 'package:flutter/material.dart';
import 'package:trylaw/Frontpage.dart';
class leader extends StatelessWidget{
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
            Text("Indian politicians & their Houses",style:TextStyle(fontSize: 18,color: Colors.white,fontFamily:'font2',fontWeight: FontWeight.w500)),
            Container(
              margin:EdgeInsets.only(left: 10),
              height:50,
              width:50,
              child:Image.asset('assets/images/team-leader.png'),
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin:EdgeInsets.only(top:12),
                  height:80,
                  width:600,
                  decoration:BoxDecoration(
                      color:Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(21)
                  ),
                  child:Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Who are Indian Politicians ?',style:TextStyle(fontSize: 20,fontFamily: 'font6',color:Colors.black)),
                  ))
                ),
              ),
              Container(
                margin:EdgeInsets.only(top:10),
                height:600,
                width:600,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("In India, there are two houses in the Parliament: the Lok Sabha (House of the People) and the Rajya Sabha (Council of States). The process of electing leaders for these houses differs:",
                  style:TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color: Colors.black)),
                )
              ),
              Container(
                margin:EdgeInsets.only(top:10),
                height:300,
                width:600,
                child:Image.asset('assets/images/no.jpg',fit:BoxFit.fill)
              ),
              Container(
                margin:EdgeInsets.only(top:10),
                height:2400,
                width:600,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Lok Sabha (House of the People):"
                      "Election of the Prime Minister:"

                      "The leader of the majority party or coalition in the Lok Sabha is invited by the President of India to form the government."
                      "The Prime Minister is not directly elected by the people but is the leader of the majority party in the Lok Sabha."
                      "If no single party has a clear majority, a coalition government may be formed with the leader of the coalition becoming the Prime Minister."
                     " Members of Parliament (MPs):"

                    "Members of the Lok Sabha are directly elected by the citizens of India through general elections, which are held every five years."
              "The leader of the majority party becomes the Prime Minister, while the leader of the opposition party assumes a significant role in the functioning of the house.",
                  style:TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color:Colors.black)),
                ),
              ),
              Container(
                margin:EdgeInsets.only(top:10),
                height:300,
                width:600,
                color:Colors.yellowAccent,
                child:Image.asset('assets/images/gi.jpg',fit:BoxFit.fill)
              ),
              Container(
                margin:EdgeInsets.only(top:10),
                height:3100,
                width:600,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Rajya Sabha (Council of States):"
                      "Election of Members:"

                      "Members of the Rajya Sabha are not directly elected by the public."
                      "They are elected by the elected members of the State Legislative Assemblies using a single transferable vote system."
                      "The number of representatives for each state is determined based on its population and other factors."
                      "Chairman:"

                      "The Vice President of India acts as the Chairman of the Rajya Sabha."
                      "In the absence of the Vice President, the Deputy Chairman, elected by the members of the Rajya Sabha, presides over its meetings."
                      "The process for electing leaders in both houses involves a combination of democratic elections, party leadership within the houses, and constitutional provisions to ensure representation and governance at the national level."

                      "The Prime Minister, as the head of government, holds significant authority in policymaking and decision-making, especially in matters related to the executive branch of the government.",
                  style:TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color:Colors.black)),
                ),
              ),
              Container(
                margin:EdgeInsets.only(top:10),
                height:100,
                width:300,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                      ),onPressed:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Frontpage()));
                  }, child: Text('Done',style: TextStyle(fontSize: 28,fontFamily: 'font2',fontWeight: FontWeight.bold,color:Colors.white),)),
                )
              )

            ],
          ),
        ),
      )
    );
  }

}