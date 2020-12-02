import 'package:flutter/material.dart';

class CaccountScreen extends StatefulWidget {
  @override
  _CaccountScreenState createState() => _CaccountScreenState();
}

class _CaccountScreenState extends State<CaccountScreen> {
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
                  Icon(Icons.arrow_back_ios,size: MediaQuery.of(context).size.width/25,),
                  SizedBox(width: MediaQuery.of(context).size.width/25),
                  Text("Account",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25,fontWeight: FontWeight.bold )),
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
                children: [
                  accounttag(context,Icons.call,"Edit Phone Number"),
                  accounttag(context,null,"Manage Address"),
                  accounttag(context,null,"Edit Email ID"),
                  accounttag(context,null,"Create Baggage"),
                  accounttag(context,null,"About"),
                  accounttag(context,null,"Terms & conditions"),
                  accounttag(context,null,"Privacy Policy"),
                  accounttag(context,null,"Refer a Friend"),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }

  Widget accounttag(BuildContext context,IconData iconData,String txt) {
    return Column(
      children: [
        Row(
          children: [
            Icon(iconData),
            SizedBox(width: MediaQuery.of(context).size.width/20),
            Text("$txt",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25,letterSpacing: 1,wordSpacing: 1))
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height/100),
      ],
    );
  }
}