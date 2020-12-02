import 'package:flutter/material.dart';

class ClocationScreen extends StatefulWidget {
  @override
  _ClocationScreenState createState() => _ClocationScreenState();
}

class _ClocationScreenState extends State<ClocationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios,size: MediaQuery.of(context).size.width/25,),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/100),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1.0,
              color: Colors.grey,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/100),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Search for drop location"),
                  SizedBox(height: MediaQuery.of(context).size.height/100),
                  Row(
                    children: [
                      Image.asset("assets/google.png",width: MediaQuery.of(context).size.width/15,),
                      SizedBox(width: MediaQuery.of(context).size.width/20),
                      Text("Search location via map",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25,letterSpacing: 1,wordSpacing: 1))
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/100),
                  // SizedBox(height: MediaQuery.of(context).size.height/50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width/2.4),
                        height: 1,
                        color: Colors.grey,
                      ),
                      Text("OR",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,color:Colors.grey),),
                      Container(
                        width: (MediaQuery.of(context).size.width/2.4),
                        height: 1,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(0, 209, 143, 1),width: 1.0)),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search,color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}