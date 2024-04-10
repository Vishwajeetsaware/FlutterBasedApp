import "package:flutter/material.dart";
import "package:trylaw/Frontpage.dart";

class parliament extends StatelessWidget{
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
              Text('Indian Legislature',style:TextStyle(fontSize:25,fontWeight:FontWeight.w800,fontFamily: 'font2',
              color:Colors.white)),
              Container(
                width:12,
              ),
              Container(
                height:50,
                  width:50,
                  child: Image.asset('assets/images/sansad-bhavan.png')),
            ],
          ),
        backgroundColor: Colors.purpleAccent,
        elevation: 10),
        body:Container(
          decoration:BoxDecoration(
            image:DecorationImage(image: AssetImage('assets/images/go.jpg'), fit:BoxFit.fill)
         ),
          child: SingleChildScrollView(
            scrollDirection:Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height:80,
                    width:600,
                    decoration:BoxDecoration(
                      color:Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child:Center(child: Text('What is Indian Legislature ?',style:TextStyle(fontSize: 21,fontFamily: 'font6',fontWeight: FontWeight.w900)))
                  ),
                  Container(
                    margin:EdgeInsets.only(top:10),
                    height:400,
                    width:600,
                    child:Center(
                      child: Column(
                        children: [
                          Container(
                            height:310,
                            width:500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image:AssetImage('assets/images/hi.jpg'),
                                fit:BoxFit.fill,
                              ),
                            )

                          ),
                          Container(
                            margin:EdgeInsets.only(top:5),
                            height:80,
                            width:500,
                            color:Colors.black,
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(child: Text('Picture of parliament in british Era',style:TextStyle(fontSize: 18,fontFamily: 'font6',color:Colors.white))),
                            )
                          )
                        ],
                      ),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin:EdgeInsets.only(top:10),
                      height:2860,
                      width:600,
                      child:Text("The Indian Parliament building in New Delhi was designed by British architects Sir Edwin Lutyens and Sir Herbert Baker. It was constructed during the British colonial rule in India and completed in 1927. The purpose behind its construction was to serve as the legislative house for the government of British India."

                          "The British architects designed the building to reflect a blend of Indian and British architectural styles. Its architecture incorporates elements from various regions of India, showcasing a fusion of Western and traditional Indian architectural features."

                          "Following India's independence in 1947, the Parliament building continued to serve its original purpose as the center of legislative activities. It houses the two houses of the Indian Parliament: the Lok Sabha (House of the People) and the Rajya Sabha (Council of States)."

                          "The Parliament building stands as a symbol of India's democratic governance and hosts sessions where laws are debated, discussed, and passed. It represents the democratic values and the functioning of the Indian government, though the intention behind its construction during the British rule was to cater to colonial administrative needs.",
                        style: TextStyle(fontSize:24,fontWeight: FontWeight.w600,color:Colors.black ),


                          )
                    ),
                  ),
                  Container(
                    height:300,
                    width:600,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image:DecorationImage(image: AssetImage('assets/images/old.jpg'),
                      fit:BoxFit.cover),
                    )
                  ),
                  Container(
                    margin:EdgeInsets.only(top:8),
                    height:80,
                    width:600,
                    color:Colors.black,
                    child:Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Image of First Parliament gathering after independance',style:TextStyle(fontSize: 15,fontFamily: 'font6',color:Colors.white)),
                    ))
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:2080,
                      width:600,
                      child:Text("After India gained independence from British rule in 1947, the Indian Parliament continued to function in the same building, which was initially known as the Dominion Parliament or the Central Legislative Assembly during British rule. This building, located in New Delhi, underwent various renovations and expansions over the years to accommodate the growing needs of the Indian government."

                          "However, recognizing the need for a more spacious and modern structure to house the Parliament, a decision was made to construct a new building. In 2022, the foundation stone for the new Parliament building was laid, and plans were underway for its completion."

                          "The existing Parliament House, with its historical significance, was intended to be preserved as a heritage building, serving as a symbol of India's democratic legacy and history.",style:TextStyle(fontSize:24,fontWeight: FontWeight.w600,color:Colors.black),
                          )
                    ),
                  ),
                  Container(
                    height:300,
                  width:600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image:AssetImage('assets/images/jo.jpg'),
                      fit:BoxFit.fill,
                    ),
                  ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top:8),
                    height:80,
                    width:600,
                    color:Colors.black,
                    child:Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Picture of Indian Parliament',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w900,fontFamily: 'font6',color:Colors.white)),
                    ))
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:4950,
                      width: 600,
                      child:Text("After India gained independence from British rule on August 15, 1947, the country adopted a parliamentary form of government. The Constituent Assembly, which was tasked with drafting the Constitution of India, finalized the document on November 26, 1949. The Constitution came into effect on January 26, 1950, establishing India as a sovereign, democratic republic."

                          "The Indian Parliament, based in New Delhi, consists of two houses: the Lok Sabha (House of the People) and the Rajya Sabha (Council of States)."

                    "Lok Sabha: The Lok Sabha is the lower house of Parliament, representing the people of India. Members of the Lok Sabha are elected by the citizens of India through direct elections."

                    "Rajya Sabha: The Rajya Sabha is the upper house and represents the states and union territories of India. Its members are not directly elected by the people but are chosen by the elected members of the state legislative assemblies."

                    "The functioning and legislative process of the Indian Parliament involve the introduction and passing of bills, discussions, debates, and policy formulations. The President of India is an integral part of the Parliament and gives assent to bills passed by both houses for them to become laws."

                    "Over the years, India's Parliament has witnessed numerous changes, including the introduction of new bills, amendments to existing laws, and debates on critical national and international issues. It plays a vital role in shaping the country's policies, governance, and legislation."

                 " Several significant events have occurred within the Indian Parliament, including landmark debates, passing of crucial bills, and moments that have shaped the political landscape of the country. These include economic reforms, constitutional amendments, social justice initiatives, and various socio-political movements."

                    "The Indian Parliament remains a dynamic institution, reflecting the diversity and democratic spirit of the nation, and continues to evolve to address the changing needs and aspirations of its people.",
                      style:TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color:Colors.black))
                    ),
                  ),
                  Container(
                    height:300,
                    width:600,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      image:DecorationImage(
                        image:AssetImage('assets/images/shu.jpg'),
                        fit:BoxFit.fill,
                      )
                    )
                  ),
                  Container(
                    margin:EdgeInsets.only(top:8),
                    height:80,
                    width:600,
                    color:Colors.black,
                    child:Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Picture of new parliament of India',style:TextStyle(fontSize: 18,fontFamily: 'font6',fontWeight: FontWeight.w900,color:Colors.white)),
                    ))
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:6550,
                      width:600,
                      child:Text("The decision to build a new Parliament House or the Central Vista redevelopment plan has been a topic of debate and significance in India."

                          "The existing Parliament House, designed by British architect Edwin Lutyens, has been in use since 1927. Over time, the need for expansion, modernization, and facilities to accommodate the increasing number of parliamentarians, advancements in technology, and security concerns became apparent."

                          "The proposal for a new Parliament House as part of the Central Vista redevelopment plan aimed to address these needs. Some of the key reasons for the new Parliament House and the redevelopment plan include:"

                          "Space and Infrastructure: The current Parliament House was designed for a much smaller number of legislators than the present count. The new building was envisioned to have better facilities, increased space, and advanced infrastructure to support the functioning of a larger number of members."

                          "Technological Upgradation: With advancements in technology, the new Parliament House was planned to incorporate modern amenities, IT infrastructure, and communication systems necessary for efficient legislative functions."

                          "Accessibility and Safety: Accessibility for differently-abled individuals and enhanced safety and security measures were integral aspects of the proposed design. The aim was to create a more inclusive and secure space for parliamentarians and visitors."

                          "Preserving Heritage and Symbolism: While aiming for modernization, the plan also focused on preserving the heritage value and symbolism associated with the Central Vista area, which holds historical and architectural significance."

                          "However, the proposal faced criticism and debate on various fronts, including concerns about the cost, environmental impact, displacement of residents, and the urgency of the project amidst other pressing needs in the country."

                          "The debate surrounding the new Parliament House project revolved around whether the resources allocated for this redevelopment could be better utilized in addressing more immediate and critical concerns such as healthcare, education, infrastructure in rural areas, etc. Supporters argued that the modernization and upgradation of the legislative infrastructure were necessary for the efficient functioning of the country's governance system."

                          "The discussion around the necessity of a new Parliament House reflects the balancing act between modernization, functional requirements, historical preservation, and allocation of resources in a developing nation like India.",style:TextStyle(fontSize:24,fontWeight: FontWeight.w600,color:Colors.black),






                          ),
                    ),
                  ),
                  Container(
                    height:100,
                    width:300,
                    child:ElevatedButton(
                      style:ElevatedButton.styleFrom(
                         backgroundColor: Colors.purpleAccent,),onPressed:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Frontpage()));
                    },child:Text('Done',style:TextStyle(fontFamily: 'font2',color:Colors.white,fontSize: 30)),
                  ),
                  ),            ],
              ),
            ),
          ),
        )
      );
  }
  
}