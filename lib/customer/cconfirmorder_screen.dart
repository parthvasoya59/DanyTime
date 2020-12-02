import 'package:flutter/material.dart';

class CconfirmorderScreen extends StatefulWidget {
  @override
  _CconfirmorderScreenState createState() => _CconfirmorderScreenState();
}

class _CconfirmorderScreenState extends State<CconfirmorderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(width: MediaQuery.of(context).size.width/20),
                  Text("Confirm Order",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.bold )),
                ],
              ),
            ),
            Divider(color: Color.fromRGBO(0, 209, 143, 1)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/dot.png"),
                      Text(" You are not buying product from nearby stores",style: TextStyle(color: Colors.red),)
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  fooditem(context,"Full bloom classic Tea","70 gm","45"),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  fooditem(context,"Masala Maggi Noodlese","70 gm","45"),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  fooditem(context,"Mtr upma Breakfast mix","70 gm","45"),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50),
            Center(
              child: Text("+ Add More",style: TextStyle(fontSize: MediaQuery.of(context).size.width/22,fontWeight: FontWeight.bold,color: Color.fromRGBO(0, 209, 143, 1)),),
            )
          ]
        ),
        bottomNavigationBar: bottommobile(context,Icons.location_on,"Add an Address to proceed","Enter the delivery address"),
      ),
    );
  }

  Container bottommobile(BuildContext context,IconData iconData,String txt1,String txt2) {
    return Container(
        height: MediaQuery.of(context).size.height/15,
        // color: Colors.red,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              blurRadius: 10.5,
              spreadRadius: 2.0
            ),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(iconData,color: Color.fromRGBO(0, 209, 143, 1)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$txt1",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("$txt2",),
              ]
            ),
            Container(
              width: MediaQuery.of(context).size.width/5,
              height: MediaQuery.of(context).size.height/30,
              // color: Colors.red,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color.fromRGBO(0, 209, 143, 1),
              ),
              child: Center(child: Text("Add",style: TextStyle(color: Colors.white),)),
            ),
          ]
        ),
      );
  }

  Row fooditem(BuildContext context,String txt,String quantity,String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width/1.9,
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$txt",style: TextStyle(fontWeight:FontWeight.w500,fontSize: MediaQuery.of(context).size.width/25),),
              Text("$quantity",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25),),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width/5,
          height: MediaQuery.of(context).size.width/15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color : Colors.black)
          ),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width/15.4,
                decoration: BoxDecoration(
                  border : Border(
                    right: BorderSide(
                      color: Colors.black
                    )
                  ),
                ),
                child: Center(child: Text("-")),
              ),
              Container(
                width: MediaQuery.of(context).size.width/15.4,
                decoration: BoxDecoration(
                  border : Border(
                    right: BorderSide(
                      color: Colors.black
                    )
                  ),
                ),
                child: Center(child: Text("1",style: TextStyle(color: Color.fromRGBO(0, 209, 143, 1)),)),
              ),
              Container(
                width: MediaQuery.of(context).size.width/15.4,
                child: Center(child: Text("+",style: TextStyle(color: Color.fromRGBO(0, 209, 143, 1)),)),
              ),
            ],
          ),
        ),
        Text("Rs $price",style: TextStyle(fontWeight: FontWeight.bold))
      ],
    );
  }
}