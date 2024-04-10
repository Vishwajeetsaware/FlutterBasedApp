import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:trylaw/Frontpage.dart';

class profile extends StatefulWidget{
  @override
  State<profile> createState()=> _profile(); }
class _profile extends State<profile>{
  double screenHeight = 0;
  double screenWidth = 0;
  final user = TextEditingController();
  final password = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  final address = TextEditingController();

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
              Text('My Profile', style:TextStyle(fontSize:30,fontWeight:FontWeight.bold,color:Colors.white)),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profiletie.png'),
                radius:25
              ),
            ],
          ),
        ),

   backgroundColor: Colors.purpleAccent,
        elevation: 10,
      ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage('assets/images/bobo.jpg'),
          fit: BoxFit.fill),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical ,
              child: Column(

                children: [
                  Container(
                    margin:EdgeInsets.only(top:19),
                    height:90,
                    width:90,
                    child:CircleAvatar(
                      backgroundImage:AssetImage('assets/images/profiletop.png'),
                      radius:30,
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top:12),
                    height:65,
                    width:350,
                    child:TextField(
                      controller: user,
                      decoration:InputDecoration(
                        hintText:'              Username',
                        focusedBorder:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(21),
                          borderSide:BorderSide(
                            color:Colors.purple,
                            width:2,
                          )
                        ),
                        enabledBorder:OutlineInputBorder(
                            borderRadius:BorderRadius.circular(21),
                            borderSide:BorderSide(
                              color:Colors.purple.shade400,
                              width:2,
                            )
                        ),
                        disabledBorder:OutlineInputBorder(
                            borderRadius:BorderRadius.circular(21),
                            borderSide:BorderSide(
                              color:Colors.purple.shade50,
                              width:2,
                            )
                        ),
                        prefixText: 'Username:',
                        suffixIcon: Icon(Icons.account_circle_rounded,size:30),
                      )
                    )
                  ),
                  Container(
                      margin:EdgeInsets.only(top:12),
                      height:65,
                      width:350,
                      child:TextField(
                          controller: password,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration:InputDecoration(
                            hintText: '              Password',
                            focusedBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(21),
                                borderSide:BorderSide(
                                  color:Colors.purple,
                                  width:2,
                                )
                            ),
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(21),
                                borderSide:BorderSide(
                                  color:Colors.purple.shade400,
                                  width:2,
                                )
                            ),
                            disabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(21),
                                borderSide:BorderSide(
                                  color:Colors.purple.shade50,
                                  width:2,
                                )
                            ),
                            prefixText: 'Password:',
                            suffixIcon: Icon(Icons.password_outlined,size:30),
                          )
                      )
                  ),
                  Container(
                    margin:EdgeInsets.only(top:12),
                      height:65,
                      width:350,
                      child:TextField(
                        controller: phone,
                         keyboardType: TextInputType.phone,
                          decoration:InputDecoration(
                            hintText:'              Phone number',
                            focusedBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(21),
                                borderSide:BorderSide(
                                  color:Colors.purple,
                                  width:2,
                                )
                            ),
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(21),
                                borderSide:BorderSide(
                                  color:Colors.purple.shade400,
                                  width:2,
                                )
                            ),
                            disabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(21),
                                borderSide:BorderSide(
                                  color:Colors.purple.shade50,
                                  width:2,
                                )
                            ),
                            prefixText: 'Phone no:',
                            suffixIcon: Icon(Icons.phone,size:30),
                          )
                      ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top:12),
                      height:65,
                      width:350,
                      child:TextField(
                        controller: email,
                          decoration:InputDecoration(
                            hintText:'                Email-ID',
                            focusedBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(21),
                                borderSide:BorderSide(
                                  color:Colors.purple,
                                  width:2,
                                )
                            ),
                            enabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(21),
                                borderSide:BorderSide(
                                  color:Colors.purple.shade400,
                                  width:2,
                                )
                            ),
                            disabledBorder:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(21),
                                borderSide:BorderSide(
                                  color:Colors.purple.shade50,
                                  width:2,
                                )
                            ),
                            prefixText: 'Email-ID:',
                            suffixIcon: Icon(Icons.attach_email, size:30),
                          )
                      ),
                  ),

                  Container(
                    margin:EdgeInsets.only(top:12),
                    height:65,
                    width:350,
                    child:TextField(
                      controller: address,
                        decoration:InputDecoration(
                          hintText: '                Address',
                          focusedBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(21),
                              borderSide:BorderSide(
                                color:Colors.purple,
                                width:2,
                              )
                          ),
                          enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(21),
                              borderSide:BorderSide(
                                color:Colors.purple.shade400,
                                width:2,
                              )
                          ),
                          disabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(21),
                              borderSide:BorderSide(
                                color:Colors.purple.shade50,
                                width:2,

                              )
                          ),
                          prefixText: 'Address:',
                          suffixIcon: Icon(Icons.home,size:30),
                        )
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top:20),
                    height:75,
                    width:200,
                    child:ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.purpleAccent),
                      onPressed:(){
                          CollectionReference collRef = FirebaseFirestore.instance.collection('law');
                          collRef.add({
                            'Username': user.text,
                            'password': password.text,
                            'phone_number': phone.text,
                            'Email-Id': email.text,
                            'Address': address.text,
                          }
    );
                          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Frontpage()));


                    },child:SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text('Sign-In',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold,
                              color:Colors.white )),
                          Container(
                            height:12,
                            width:12,
                          ),
                          Container(
                            height:48,
                            width:48,
                              child: Image.asset('assets/images/lockremove.png')),
                        ],
                      ),
                    ),
                  ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}



