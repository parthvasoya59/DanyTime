import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ChomeScreen extends StatefulWidget {
  @override
  _ChomeScreenState createState() => _ChomeScreenState();
}

class _ChomeScreenState extends State<ChomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on,color: Color.fromRGBO(0, 209, 143, 1),size: MediaQuery.of(context).size.width/14,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Home",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.bold),),
                                Text("Thane, Mumbai, Mahar..",style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.call,size: MediaQuery.of(context).size.width/14,color: Colors.grey,),
                            Image.asset("assets/baglogo.png",width: MediaQuery.of(context).size.width/14,height: MediaQuery.of(context).size.width/14,),
                            Icon(Icons.shopping_cart,size: MediaQuery.of(context).size.width/14,color: Colors.grey,)
                          ],
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
                            borderSide: BorderSide(color: Color.fromRGBO(0, 209, 143, 1),width: 2.0)),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search,color: Colors.grey),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/100),
              Divider(color: Color.fromRGBO(0, 209, 143, 1),),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children : [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Carousel(
                          overlayShadowSize: 0.0,
                          overlayShadow: false,
                          boxFit: BoxFit.fill,
                          images: [
                            AssetImage("assets/foods.png"),
                            AssetImage("assets/foods.png"),
                            AssetImage("assets/foods.png"),
                            AssetImage("assets/foods.png"),
                          ]
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/100),
                      Text("Search by Category",style: TextStyle(fontWeight:FontWeight.bold,letterSpacing: 0.8)),
                      SizedBox(height: MediaQuery.of(context).size.height/100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          categories(context,"assets/burger.png","Food & Gournment"),
                          categories(context,"assets/foods.png","Personal Care"),
                          categories(context,"assets/foods.png","Household essentials"),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          categories(context,"assets/foods.png","Food & Gournment"),
                          categories(context,"assets/foods.png","Personal Care"),
                          Container(
                            width: MediaQuery.of(context).size.width/5,
                            height: MediaQuery.of(context).size.width/5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.grey)
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "+5 More",
                                style: TextStyle(color: Color.fromRGBO(0, 209, 143, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/50),
                      Text("Top Pickupus",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: MediaQuery.of(context).size.height/50),
                      Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                toppickups(context),
                                SizedBox(width: MediaQuery.of(context).size.width*0.04),
                                toppickups(context),
                              ],
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/50),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                toppickups(context),
                                SizedBox(width: MediaQuery.of(context).size.width*0.04),
                                toppickups(context),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container toppickups(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.68,
      height: MediaQuery.of(context).size.height/6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(image: AssetImage("assets/foods.png"),fit: BoxFit.fill)
      ),
    );
  }

  Column categories(BuildContext context,String url,String txt) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width/5,
          height: MediaQuery.of(context).size.width/5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(fit: BoxFit.fill,image: AssetImage("$url"))
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height/100),
        Container(
          width: MediaQuery.of(context).size.width/5,
          child: Text("$txt",textAlign: TextAlign.center,),
        ),
      ],
    );
  }
}