import 'package:flutter/material.dart';

class CpaymentScreen extends StatefulWidget {
  @override
  _CpaymentScreenState createState() => _CpaymentScreenState();
}

class _CpaymentScreenState extends State<CpaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios,size: MediaQuery.of(context).size.width/20,),
                  SizedBox(width: MediaQuery.of(context).size.width/25),
                  Text("Select payment method",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25,fontWeight: FontWeight.bold )),
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
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Online Payment",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20)),
                  Text("After your first payment, we will save your details for future use.",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25)),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  Row(
                    children: [
                      Image.asset("assets/visalogo.png",width:MediaQuery.of(context).size.width/6 ),
                      SizedBox(width: MediaQuery.of(context).size.width/20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Personal",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25),),
                          Text("459115XXXXXXXXXXX1234",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25),),
                        ],
                      )
                    ],
                  ),
                  paymenttag(context,"assets/banklogo.png","Net Banking"),
                  paymenttag(context,"assets/banklogo.png","Credit Card, Debit Card"),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  Text("UPI",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20)),
                  paymenttag(context,"assets/google2.png","Google Pay"),
                  paymenttag(context,"assets/google2.png","Paytm"),
                  Row(
                    children: [
                      Image.asset("assets/UPI.png",width:MediaQuery.of(context).size.width/6 ),
                      SizedBox(width: MediaQuery.of(context).size.width/20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pay via UPI",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25),),
                          Text("You need to have a registered UPI ID",style: TextStyle(fontSize: MediaQuery.of(context).size.width/30),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50),
                  Text("Other Options",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20)),
                  paymenttag(context,"assets/cashlogo.png","Cash On Delivery"),SizedBox(height: MediaQuery.of(context).size.height/50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget paymenttag(BuildContext context,String imageUrl,String txt) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height/100),
        Row(
          children: [
            Image.asset("$imageUrl",width:MediaQuery.of(context).size.width/7,height: MediaQuery.of(context).size.width/7, ),
            SizedBox(width: MediaQuery.of(context).size.width/20),
            Text("$txt",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25),)
          ],
        ),
      ],
    );
  }
}