import 'package:flutter/material.dart';

class CcreaditcardScreen extends StatefulWidget {
  @override
  _CcreaditcardScreenState createState() => _CcreaditcardScreenState();
}

class _CcreaditcardScreenState extends State<CcreaditcardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios,size: MediaQuery.of(context).size.width/20,),
                      SizedBox(width: MediaQuery.of(context).size.width/25),
                      Text("Credit Card And Debit",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.bold )),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1.0,
                  color: Colors.grey,
                ),
                SizedBox(height: MediaQuery.of(context).size.height/100),
                creaditcard(context,Color.fromRGBO(64,191,255,1),"6326 9124 8124 9875","Lailyfa Febrina","19/2042"),
                creaditcard(context,Color.fromRGBO(92,97,244,1),"6326 9124 8124 9875","Lailyfa Febrina","19/2042"),
              ],
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

  Padding creaditcard(BuildContext context,Color color,String number,String cardholder,String date) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/4,
        // color: Colors.red,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width/16,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.blur_circular),
                Text("$number",style: TextStyle(fontSize: MediaQuery.of(context).size.width/13,color: Colors.white,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("CARD HOLDER",style: TextStyle(color: Colors.white60),),
                        Text("$cardholder",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/12,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("CARD SAVE",style: TextStyle(color: Colors.white60),),
                        Text("$date",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}