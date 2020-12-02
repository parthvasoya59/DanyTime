import 'package:flutter/material.dart';

class CcreatebaggageScreen extends StatefulWidget {
  @override
  _CcreatebaggageScreenState createState() => _CcreatebaggageScreenState();
}

class _CcreatebaggageScreenState extends State<CcreatebaggageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios,size: MediaQuery.of(context).size.width/20,),
                  SizedBox(width: MediaQuery.of(context).size.width/25),
                  Text("Baggage",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.bold )),
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Weekly Rashan",style: TextStyle(color: Color.fromRGBO(0, 209, 143, 1),fontSize: MediaQuery.of(context).size.width/25),),
                  fooditem(context,"Full bloom classic Tea","70 gm","45"),
                  fooditem(context,"Masala Maggi Noodlese","70 gm","45"),
                  fooditem(context,"Mtr upma Breakfast mix","70 gm","45"),
                  fooditem(context,"Full bloom classic Tea","70 gm","45"),
                  fooditem(context,"Masala Maggi Noodlese","70 gm","45"),
                  fooditem(context,"Mtr upma Breakfast mix","70 gm","45"),
                  fooditem(context,"Full bloom classic Tea","70 gm","45"),
                  fooditem(context,"Masala Maggi Noodlese","70 gm","45"),
                  fooditem(context,"Mtr upma Breakfast mix","70 gm","45"),
                  Center(
                    child: Text("+ Add More",style: TextStyle(fontSize: MediaQuery.of(context).size.width/22,fontWeight: FontWeight.bold,color: Color.fromRGBO(0, 209, 143, 1)),),
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
                      child: Center(child: Text("Order",style: TextStyle(fontSize: 18,color: Colors.white))),
                    ),
                  ),
                ],
              ),
            ),
            
          ]
        ),
      ),
    );
  }

  Widget fooditem(BuildContext context,String txt,String quantity,String price) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height/50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/1.9,
              // color: Colors.red,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width/40,
                    width: MediaQuery.of(context).size.width/40,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(0, 209, 143, 1)
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" $txt",style: TextStyle(fontWeight:FontWeight.w500,fontSize: MediaQuery.of(context).size.width/25),),
                      Text(" $quantity",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25),),
                    ],
                  ),
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
        ),
      ],
    );
  }

}