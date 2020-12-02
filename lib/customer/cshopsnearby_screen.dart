import 'package:flutter/material.dart';

class CshopsnearbyScreen extends StatefulWidget {
  @override
  _CshopsnearbyScreenState createState() => _CshopsnearbyScreenState();
}

class _CshopsnearbyScreenState extends State<CshopsnearbyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    SizedBox(width: MediaQuery.of(context).size.width/20),
                    Text("Shops Nearby",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.bold )),
                  ],
                ),
              ),
              Divider(color: Colors.blue[700],thickness: 2,),
              Center(
                child: Wrap(
                  spacing: MediaQuery.of(context).size.width/20,
                  direction: Axis.horizontal,
                  children: [
                    shoptag(context,"assets/shop1.png","Laxmi General Store","0.4","Mi Road","33"),
                    shoptag(context,"assets/shop2.png","Laxmi General Store","0.4","Mi Road","33"),
                    shoptag(context,"assets/shop1.png","Laxmi General Store","0.4","Mi Road","33"),
                    shoptag(context,"assets/shop2.png","Laxmi General Store","0.4","Mi Road","33"),
                    shoptag(context,"assets/shop1.png","Laxmi General Store","0.4","Mi Road","33"),
                    shoptag(context,"assets/shop2.png","Laxmi General Store","0.4","Mi Road","33"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget shoptag(BuildContext context,String imageUrl,String shopname,String distance,String area,String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Container(
        height: MediaQuery.of(context).size.height/3,
        width: MediaQuery.of(context).size.width/2.3,
        // color: Colors.red,
        decoration: BoxDecoration(
          // color: Colors.red,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5.5,
                // color: Colors.blue
                child: Image.asset("$imageUrl"),
              ),
              Text("$shopname",style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width/20)),
              Row(
                children: [
                  Image.asset("assets/star1.png"),
                  Image.asset("assets/star1.png"),
                  Image.asset("assets/star1.png"),
                  Image.asset("assets/star1.png"),
                  Image.asset("assets/star2.png"),
                ],
              ),
              Row(
                children: [
                  Text("$distance Km"),
                  SizedBox(width: MediaQuery.of(context).size.width/40,),
                  Text("$area"),
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/watch.png"),
                  SizedBox(width: MediaQuery.of(context).size.width/40,),
                  Text("$time Mins"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}