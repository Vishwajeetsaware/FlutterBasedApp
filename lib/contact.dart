import 'package:flutter/material.dart';
class contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Contact us',style:TextStyle(fontSize: 25,fontFamily: 'font6',fontWeight: FontWeight.w900,color:Colors.white)),
         backgroundColor: Colors.purpleAccent,
      ) ,
      body:Container(
        decoration:BoxDecoration(
          image:DecorationImage(image: AssetImage('assets/images/go.jpg'),fit:BoxFit.fill)
        ),
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [Container(
                    margin:EdgeInsets.only(right: 78),
                      child: Text("Get in Touch with Vishwajeet")),
                             Text("We're here to assist you with any queries, feedback, or concerns you may have. Your experience with our law and order app matters to us. Please reach out through any of the following channels:"),

                             Container(
                                 child: Text("Customer Support",style:TextStyle(fontSize: 15,fontWeight: FontWeight.w600))),
                             Text("Our dedicated support team is available round-the-clock to provide prompt assistance. Feel free to contact us via email or phone:"),

                             Text("Email: support@vishwajeetlawapp.com"),
                             Text( "Phone: +91 9016670755",style:TextStyle(color:Colors.indigo)),
                             Text("Feedback & Suggestions"),
                             Text("Your input fuels our improvements. Share your thoughts, suggestions, or ideas to help us enhance your experience. Email us at feedback@vishwajeetlawapp.com."),

                             Text("Technical Support"),
                             Text("Encountering technical issues? Our tech experts are ready to troubleshoot and resolve any problems. Reach out to our technical support team at techsupport@vishwajeetlawapp.com."),

                             Text("Business Inquiries"),
                             Text("For partnership opportunities, collaborations, or any business-related queries, please contact us at partnerships@vishwajeetlawapp.com."),

                             Text("Social Media"),
                             Text("Connect with us on social media platforms to stay updated and engage with our community:"),

                             Text("Facebook: [Link]"),
                             Text("Twitter: [Link]"),
                             Text("Instagram: [Link]"),
                             Text("LinkedIn: [Link]"),
                             Text("Headquarters"),
    Text("If you prefer traditional mail or need to visit us in person, here's our office address:"),

    Text("[Vishwajeet Law & Order App]"
    "[Street Address]"
                    "[City, State, ZIP Code]"
   " [Country]"),

    Text("We Value Your Feedback"),
    Text("Your feedback is invaluable in shaping our app's future. Please don't hesitate to get in touch. We're committed to providing you with exceptional service and continuously improving our app to meet your needs."),

    Text("Thank you for choosing Vishwajeet Law & Order App!"),

    Text("Feel free to customize this content to fit the specific details of Vishwajeet's app and contact information."),
                  ],
                ),
              ),
            ),
          ),
        )
      )
    );
  }

}