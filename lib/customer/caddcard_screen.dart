import 'package:flutter/material.dart';

class CaddcardScreen extends StatefulWidget {
  @override
  _CaddcardScreenState createState() => _CaddcardScreenState();
}

class _CaddcardScreenState extends State<CaddcardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios,size: MediaQuery.of(context).size.width/20,),
                      SizedBox(width: MediaQuery.of(context).size.width/25),
                      Text("Add Card",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.bold )),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1.0,
                  color: Colors.grey,
                ),
                SizedBox(height: MediaQuery.of(context).size.height/100),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Card Number",style: TextStyle(fontSize: MediaQuery.of(context).size.width/22,fontWeight: FontWeight.w500),),
                      SizedBox(height: MediaQuery.of(context).size.height/50),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Card Number",
                          border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal),
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(0, 209, 143, 1),width: 2.0)),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/2.2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Expiration Date",style: TextStyle(fontSize: MediaQuery.of(context).size.width/22,fontWeight: FontWeight.w500),),
                                SizedBox(height: MediaQuery.of(context).size.height/50),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Enter Card Number",
                                    border: new OutlineInputBorder(
                                      borderSide: new BorderSide(color: Colors.teal),
                                      borderRadius: BorderRadius.circular(5.0)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(0, 209, 143, 1),width: 2.0)),
                                  ),
                                ),
                              ]
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/2.2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Security Code",style: TextStyle(fontSize: MediaQuery.of(context).size.width/22,fontWeight: FontWeight.w500),),
                                SizedBox(height: MediaQuery.of(context).size.height/50),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Security Code",
                                    border: new OutlineInputBorder(
                                      borderSide: new BorderSide(color: Colors.teal),
                                      borderRadius: BorderRadius.circular(5.0)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(0, 209, 143, 1),width: 2.0)),
                                  ),
                                ),
                              ]
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/50),
                      Text("Card Holder",style: TextStyle(fontSize: MediaQuery.of(context).size.width/22,fontWeight: FontWeight.w500),),
                      SizedBox(height: MediaQuery.of(context).size.height/50),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Card Holder Name",
                          border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal),
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(0, 209, 143, 1),width: 2.0)),
                        ),
                      ),
                    ],
                  ),
                )
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    width:(MediaQuery.of(context).size.width),
                    height : 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 209, 143, 1),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Center(child: Text("Add Card",style: TextStyle(fontSize: 18,color: Colors.white))),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/20)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}