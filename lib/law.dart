import 'package:flutter/material.dart';
import 'package:trylaw/Frontpage.dart';
class law extends StatelessWidget{
  double screenHeight = 0;
  double screenWidth = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
        title:Text('Indian Laws & Articles',style:TextStyle(fontSize: 28,fontWeight: FontWeight.w900,fontFamily:'font2',color: Colors.white)),
        backgroundColor:Colors.purpleAccent,elevation:10,
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
                  margin:EdgeInsets.only(top:10),
                  height:80,
                width:600,
                decoration: BoxDecoration(
                    color:Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(21)
                ),
                  child:Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('What is Indian Law & Articles ?',style:TextStyle(fontSize: 18,fontFamily: 'font6', color: Colors.black)),
                  ))
                ),
              ),
              Container(
                margin:EdgeInsets.only(top:10),
                height:300,
                width:600,
                child:Image.asset('assets/images/hoho.jpg',fit:BoxFit.fill)
              ),
              Container(
                margin:EdgeInsets.only(top:10),
                height:1420,
                width:600,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("The Indian legal system is primarily based on the Constitution of India, which is the supreme law of the country. It provides the framework for the organization of the government, fundamental rights of citizens, directive principles of state policy, and the powers and duties of various authorities. Indian law encompasses a wide range of statutes, regulations, and judicial decisions that operate within the framework established by the Constitution.",
                  style:TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color: Colors.black)),
                ),

              ),
              Container(
                margin:EdgeInsets.only(top:10),
                height:300,
                width:600,
                child:Image.asset('assets/images/bolo.png',fit:BoxFit.fill)
              ),
              Container(
                height:6500,
                width:600,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("The Constitution of India consists of a preamble and 448 articles (as of my last knowledge update in January 2022). These articles cover various aspects of governance, rights, duties, and more. Here's a broad categorization of some essential articles:"

                      "Preamble: It outlines the aims and objectives of the Constitution, including justice, liberty, equality, and fraternity."

                      "Part I - The Union and its Territories: Articles 1 to 4 define India as a Union of States and the territories of the country."

                      "Part III - Fundamental Rights: Articles 12 to 35 deal with fundamental rights granted to citizens, including right to equality, freedom of speech, right to life, etc."

                      "Part IV - Directive Principles of State Policy: Articles 36 to 51 outline the principles that guide the state in making laws and policies for social justice, economic welfare, international peace, etc."

                      "Part V - The Union: Articles 52 to 151 discuss the structure, powers, and functions of the President, Parliament, Prime Minister, etc."

                      "Part VI - The States: Articles 152 to 237 deal with the state governments, governors, state legislatures, etc."

                      "Part IX - The Panchayats: Articles 243 to 243O discuss the establishment, composition, and powers of Panchayats in rural areas."

                      "Part IXA - The Municipalities: Articles 243P to 243ZG cover the provisions related to Municipalities."

                      "Part XI - Relations Between the Union and the States: Articles 245 to 263 discuss the distribution of powers between the Union and the States."

                      "Part XII - Finance, Property, Contracts, and Suits: Articles 264 to 300A cover various aspects related to finance, property rights, contracts, etc."

                      "Part XIII - Trade, Commerce, and Intercourse within the Territory of India: Articles 301 to 307 deal with trade and commerce within India."

                      "Part XIV - Services under the Union and the States: Articles 308 to 323 deal with services, including recruitment, conditions of service, etc."

                      "This is just a brief overview, and the Constitution covers many more aspects of governance, rights, duties, and the functioning of the government machinery in India.",
                  style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color:Colors.black),),
                )

              ),
              Container(
                margin:EdgeInsets.only(top:10,bottom:10),
                height:100,
                width:300,
                child: ElevatedButton(
                    style:ElevatedButton.styleFrom(backgroundColor:Colors.purpleAccent),onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Frontpage()));
                }, child: Text('Done',style:TextStyle(fontSize: 28,fontFamily: 'font2',color:Colors.white))),
              )
            ],
          ),
        ),
      ),
    );
  }

}