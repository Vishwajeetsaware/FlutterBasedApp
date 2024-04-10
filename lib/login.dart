import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trylaw/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Frontpage.dart';

class login extends StatefulWidget{
  Future<FirebaseApp> initializeFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: FutureBuilder(
        future: initializeFirebase(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.done){
            return login();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      )
    );
  }

  @override
  State<login> createState()=>Login();}
class Login extends State<login>{
  static Future<User?> loginUsingEmailPassword({required String email, required String password, required BuildContext context}) async{
    FirebaseAuth auth = FirebaseAuth.instance;
     User? user;
   try {
     UserCredential userCredential = await auth.signInWithEmailAndPassword(
         email: email, password: password);
     user = userCredential.user;
   } on FirebaseAuthException catch (e){
     if(e.code == "user-not-found"){
       print("No User found for that email");

     }

   }
   return user;
   }
  double screenHeight = 0;
  double screenWidth = 0;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:AppBar(
          title: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                      child: Text('Login Page',style:TextStyle(fontSize:30,fontWeight:FontWeight.w400,color:Colors.white))),
                  Icon(Icons.security_rounded,size:30,color:Colors.white),
                ],
              ),
            ),
          ),
          elevation:10,
          backgroundColor:Colors.purpleAccent,
        ),
        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bobo.jpg',),fit:BoxFit.fill),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height:300,
                      width:300,
                      child:Image.asset('assets/images/g-removebg-preview.png'),
                    ),
                    Container(
                      height:80,
                      width:350,
                      child: TextField(
                          controller: email,
                          decoration: InputDecoration(
                            hintText:'Email',
                            focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                width:2,color:Colors.purple,
                              ),

                            ),
                            disabledBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                width:2,color:Colors.purple.shade50,
                              ),

                            ),
                            enabledBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                width:2,color:Colors.purple.shade200,
                              ),

                            ),
                            suffixIcon: Icon(Icons.email_sharp,size:40 ,),
                          )

                      ),
                    ),
                    Container(
                      height:80,
                      width:350,
                      child: TextField(
                        controller:password,
                          obscureText: true ,
                          obscuringCharacter: '*' ,
                          decoration: InputDecoration(
                            hintText:'Password',
                            focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                width:2,color:Colors.purple,
                              ),

                            ),
                            disabledBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                width:2,color:Colors.purple.shade50,
                              ),

                            ),
                            enabledBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                width:2,color:Colors.purple.shade200,
                              ),

                            ),
                            suffixIcon: Icon(Icons.password_outlined,size:40),
                          )

                      ),
                    ),
                    Container(
                      height:80,
                      width:150,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder:
                            (context)=>Frontpage()));
                      }, child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Login',style:TextStyle(fontSize:15)),
                          Icon(Icons.login_rounded, size:40),
                        ],
                      )),
                    ),
                    Container(
                      height:80,
                      margin:EdgeInsets.only(top:6),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap:()async{
                              User? user = await loginUsingEmailPassword(email: email.text, password: password.text, context: context);
                              print(user);
                              if(user != null){
                                print('hello');
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                  builder:(context)=>profile(),
                                ));
                              }
                              else{
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login()));
                              }
                            },
                            child: Text('Sign In',style:TextStyle(fontSize:15,fontWeight: FontWeight.w400
                                ,color:Colors.blue.shade600)),
                          ),
                          Text('Forgot Password',style:TextStyle(fontSize:15,fontWeight: FontWeight.w400
                              ,color:Colors.blue.shade600)),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        )
    );
  }

  }


