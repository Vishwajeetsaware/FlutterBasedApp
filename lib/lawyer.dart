import 'package:flutter/material.dart';
import 'package:trylaw/Frontpage.dart';
class lawyer extends StatelessWidget{
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
            Text('Laws & Lawyer',style:TextStyle(fontSize: 28,fontFamily:'font2',fontWeight: FontWeight.w500,color:Colors.white)),
            Container(
              margin:EdgeInsets.only(left:8),
              height:45,
              width:45,
              child:Image.asset('assets/images/person.png')
            )
          ],
        ),
        backgroundColor: Colors.purpleAccent,
        elevation:10,
      ),
      body:Container(
        decoration:BoxDecoration(
          image:DecorationImage(
            image:AssetImage('assets/images/go.jpg'),fit:BoxFit.fill
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height:80,
                  width: 600,
                  decoration:BoxDecoration(
                      color:Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(21)
                  ),
                  child:Center(child: Text('What is Law ?',style:TextStyle(fontSize: 28,fontFamily: 'font6',color:Colors.black)))
                ),
                Container(
                  margin:EdgeInsets.only(top:10),
                  height:300,
                  width:600,
                  color:Colors.deepOrange,
                  child:Image.asset('assets/images/mu.jpg',fit:BoxFit.fill)
                ),
                Container(
                  margin:EdgeInsets.only(top:10),
                  height:3900,
                  width:600,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Laws are a system of rules and regulations that are enforced through social institutions to govern behavior. They are created by legislatures, interpreted by the judiciary, and enforced by the executive branch of government. Laws can cover a wide range of areas, including civil rights, contracts, property, criminal behavior, and more."

                        "In India, to become a lawyer, individuals typically pursue a law degree from a recognized institution. The study of law involves various aspects, including:"

                        "Constitutional Law: Focuses on the Indian Constitution, its principles, rights, and the structure of government."

                        "Criminal Law: Deals with offenses against individuals and the state, covering topics such as theft, murder, fraud, etc."

                        "Civil Law: Encompasses matters related to contracts, property, family law, inheritance, etc."

                        "Corporate Law: Focuses on business entities, company law, mergers, acquisitions, and corporate governance."

                        "International Law: Covers agreements between nations, treaties, and international trade regulations."

                        "Legal Procedures and Practices: Includes courtroom procedures, drafting legal documents, research, and case studies.",
                    style:TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color:Colors.black)),
                  ),
                  ),
                Container(
                  margin:EdgeInsets.only(top:10),
                  height:300,
                  width:600,
                  color:Colors.purpleAccent,
                  child:Image.asset('assets/images/kojo.jpg',fit:BoxFit.fill)
                ),
                Container(
                  margin:EdgeInsets.only(top:10),
                  height:4480,
                  width:600,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("In court, lawyers perform various roles:"

                        "Representing Clients: Lawyers advocate for their clients' interests in court. They prepare arguments, present evidence, cross-examine witnesses, and make legal submissions to the judge."

                        "Legal Counseling: They provide legal advice to clients, explain their rights, obligations, and potential outcomes of legal actions."

                        "Drafting Legal Documents: Lawyers draft various legal documents such as contracts, agreements, wills, and petitions."

                        "Research and Analysis: They conduct legal research to gather information supporting their case, interpret laws, precedents, and apply them to specific situations."

                        "Negotiation and Settlement: Lawyers negotiate settlements between parties outside of court, aiming to resolve disputes without a trial."

                        "Courtroom Representation: They appear in court on behalf of their clients, presenting arguments, examining witnesses, and ensuring proper adherence to legal procedures."

                        "Indian lawyers play a crucial role in upholding justice, representing clients, and ensuring the proper application of laws and regulations. They need to have a strong understanding of various legal principles, exceptional communication skills, and the ability to analyze complex situations to provide effective legal representation.",
                    style:TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color:Colors.black)),
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(top:10,bottom:10),
                  height:100,
                  width:300,
                  child:ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                      ),onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Frontpage()));

                  }, child: Text("Done",style:TextStyle(fontSize: 28,fontFamily:'font2',fontWeight: FontWeight.w400,color:Colors.white))
                )
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

}