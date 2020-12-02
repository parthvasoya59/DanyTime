import 'package:flutter/material.dart';

class CShopScreen extends StatefulWidget {
  @override
  _CShopScreenState createState() => _CShopScreenState();
}

class _CShopScreenState extends State<CShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_ios),
                Text("Laxmi Gereral Stores", style: TextStyle(fontWeight: FontWeight.w500,fontSize: MediaQuery.of(context).size.width/20)),
                Text("Household Esseentials & Food Gournment", style: TextStyle(fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width/25)),
                SizedBox(height: MediaQuery.of(context).size.height/50,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/bigstar.png",),
                        Image.asset("assets/bigstar.png"),
                        Image.asset("assets/bigstar.png"),
                        Image.asset("assets/bigstar.png"),
                        Image.asset("assets/bigstar2.png"),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/100,),
                    Text("4.3 Rating",style: TextStyle(fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/watch.png"),
                        SizedBox(width: MediaQuery.of(context).size.width/40),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("33 Mins",style: TextStyle(fontWeight: FontWeight.w500)),
                            Text("To Reach")
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/call.png"),
                        SizedBox(width: MediaQuery.of(context).size.width/40),
                        Text("call",style: TextStyle(fontWeight: FontWeight.w500),)
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/direction.png"),
                        SizedBox(width: MediaQuery.of(context).size.width/40),
                        Text("Direction",style: TextStyle(fontWeight: FontWeight.w500))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/duration.png"),
                        SizedBox(width: MediaQuery.of(context).size.width/40),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("10 AM - & PM",style: TextStyle(fontWeight: FontWeight.w500)),
                            Text("Duration")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/50,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      toppickups(context),
                      SizedBox(width: MediaQuery.of(context).size.width*0.04),
                      toppickups(context),
                      SizedBox(width: MediaQuery.of(context).size.width*0.04),
                      toppickups(context),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/50),
                Text("Shop by Category",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight:FontWeight.w500,letterSpacing: 0.8)),
                SizedBox(height: MediaQuery.of(context).size.height/100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    categories(context,"assets/burger.png","Food & Gournment"),
                    categories(context,"assets/burger.png","Personal Care"),
                    categories(context,"assets/burger.png","Household essentials"),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    categories(context,"assets/burger.png","Food & Gournment"),
                    categories(context,"assets/burger.png","Personal Care"),
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
                Text("Store Address",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.w500,)),
                SizedBox(height: MediaQuery.of(context).size.height/70),
                Row(
                  children: [
                    Icon(Icons.location_on,color: Color.fromRGBO(0, 209, 143, 1)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.85,
                      child: Text("2715 Ash Dr. San Jose, South Dakota 83475 2715 ash Dr. San Jose, South Dakota 83475",textAlign: TextAlign.left,))
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/50),
                Text("Store Feedback",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.w500,)),
                SizedBox(height: MediaQuery.of(context).size.height/70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/emptybigstar.png"),
                    SizedBox(width:MediaQuery.of(context).size.width/30),
                    Image.asset("assets/emptybigstar.png"),
                    SizedBox(width:MediaQuery.of(context).size.width/30),
                    Image.asset("assets/emptybigstar.png"),
                    SizedBox(width:MediaQuery.of(context).size.width/30),
                    Image.asset("assets/emptybigstar.png"),
                    SizedBox(width:MediaQuery.of(context).size.width/30),
                    Image.asset("assets/emptybigstar.png"),
                    SizedBox(width:MediaQuery.of(context).size.width/30),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/70),
                Center(child: Text("Write a Review"))
              ],
            ),
          ),
        ),
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

  Container toppickups(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2.5,
      height: MediaQuery.of(context).size.width/3.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(image: AssetImage("assets/foods.png"),fit: BoxFit.fill)
      ),
    );
  }
}