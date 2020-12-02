import 'package:flutter/material.dart';

import 'csignin_screen.dart';

class CsignupScreen extends StatefulWidget {
  @override
  _CsignupScreenState createState() => _CsignupScreenState();
}

class _CsignupScreenState extends State<CsignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height/10),
                  Image.asset("assets/logo.png"),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  Text("Welcome to DanyTime",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: MediaQuery.of(context).size.width/25),),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  Text("Create a New Account",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25)),
                  SizedBox(height: MediaQuery.of(context).size.height/30),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Your Name",
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(0, 209, 143, 1),width: 2.0)),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person_outline,color: Color.fromRGBO(0, 209, 143, 1),),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Your Email",
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(0, 209, 143, 1),width: 2.0)),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.email,color: Color.fromRGBO(0, 209, 143, 1),),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(0, 209, 143, 1),width: 2.0)),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.lock_outline,color: Color.fromRGBO(0, 209, 143, 1),),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  GestureDetector(
                    child: Container(
                      width:(MediaQuery.of(context).size.width),
                      height : 60,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 209, 143, 1),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Center(child: Text("Sign Up",style: TextStyle(fontSize: 18,color: Colors.white))),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width/2.5),
                        height: 2,
                        color: Colors.grey,
                      ),
                      Text("OR",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,color:Colors.grey),),
                      Container(
                        width: (MediaQuery.of(context).size.width/2.5),
                        height: 2,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  Container(
                    width:(MediaQuery.of(context).size.width),
                    height : 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/google.png",height: 30),
                        SizedBox(width: 10,),
                        Text("Login with Google",style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width/25),),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account? ",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25,color: Colors.grey),),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CsigninScreen()),
                          );
                        },
                        child: Text("Sign in",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25,fontWeight: FontWeight.bold))),
                    ],
                  ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}