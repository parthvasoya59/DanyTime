import 'package:flutter/material.dart';

class CmyorderScreen extends StatefulWidget {
  @override
  _CmyorderScreenState createState() => _CmyorderScreenState();
}

class _CmyorderScreenState extends State<CmyorderScreen> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios,size: MediaQuery.of(context).size.width/25,),
                  SizedBox(width: MediaQuery.of(context).size.width/25),
                  Text("My Orders",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25,fontWeight: FontWeight.bold )),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/100),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1.0,
              color: Colors.grey,
            ),
            new Container(
              decoration: new BoxDecoration(color: Colors.white),
              child: new TabBar(
                controller: _controller,
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.black,
                labelColor :Color.fromRGBO(0, 209, 143, 1),
                tabs: [
                  new Tab(
                    child: Text("In Progress",)
                  ),
                  new Tab(
                    child: Text("Past orders"),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1.0,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                height: MediaQuery.of(context).size.height/1.4,
                child: new TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    new Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ordered at 8.30 PM"),
                          SizedBox(height: MediaQuery.of(context).size.height/100),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("OTP - 4732",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                                  SizedBox(height: MediaQuery.of(context).size.height/50),
                                  Text("Order No. - A4132",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                                  SizedBox(height: MediaQuery.of(context).size.height/50),
                                  Container(
                                    // width: MediaQuery.of(context).size.width/1.2,
                                    height:MediaQuery.of(context).size.height/20,
                                    // color: Colors.white,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.white
                                    ),
                                    child: Center(child: Text("Ajay Stationary Shop",style: TextStyle(color: Colors.green))),
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  itementry(context,"Camel Notebook","45"),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  itementry(context,"Natraj Pencil","45"),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  itementry(context,"Non-Dust Eraser","45"),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  Container(
                                    width: MediaQuery.of(context).size.width/1.1,
                                    height: 2.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: MediaQuery.of(context).size.width/25),
                                          Text("Total",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Text("Rs 150",style: TextStyle(decoration: TextDecoration.underline,color: Colors.white,fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height/50),
                                  Row(
                                    children: [
                                      Icon(Icons.watch_later,color: Colors.white,size: MediaQuery.of(context).size.width/25),
                                      Text(" 33 Mins",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                      Text(" to reach your door",style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,size: MediaQuery.of(context).size.width/25),
                                      Text(" 2715 Ash Dr. San Joses, South Dakota 83475",style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height/50),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width/12,
                                            height: MediaQuery.of(context).size.width/12,
                                            // color: Colors.white
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white
                                            ),
                                            child: Icon(Icons.call,color: Colors.green),
                                          ),    
                                          SizedBox(height: MediaQuery.of(context).size.height/100),
                                          Text("Call",style: TextStyle(color: Colors.white))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width/12,
                                            height: MediaQuery.of(context).size.width/12,
                                            // color: Colors.white
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white
                                            ),
                                            child: Center(child: Text("X",style: TextStyle(color: Colors.red,fontSize: MediaQuery.of(context).size.width/20),))
                                          ),    
                                          SizedBox(height: MediaQuery.of(context).size.height/100),
                                          Text("Cancel",style: TextStyle(color: Colors.white))
                                        ],
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
                    new Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ordered at 8.30 PM, 25 June"),
                          SizedBox(height: MediaQuery.of(context).size.height/100),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Order No. - A4132",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  Container(
                                    // width: MediaQuery.of(context).size.width/1.2,
                                    height:MediaQuery.of(context).size.height/20,
                                    // color: Colors.white,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.white
                                    ),
                                    child: Center(child: Text("Ajay Stationary Shop",style: TextStyle(color: Colors.green))),
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  itementry(context,"Camel Notebook","45"),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  itementry(context,"Natraj Pencil","45"),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  itementry(context,"Non-Dust Eraser","45"),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  Container(
                                    width: MediaQuery.of(context).size.width/1.1,
                                    height: 2.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height/100),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: MediaQuery.of(context).size.width/25),
                                          Text("Total",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Text("Rs 150",style: TextStyle(decoration: TextDecoration.underline,color: Colors.white,fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height/50),
                                  Container(
                                    // width: MediaQuery.of(context).size.width/1.2,
                                    height:MediaQuery.of(context).size.height/20,
                                    // color: Colors.white,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.green[700]
                                    ),
                                    child: Center(child: Text("Reorder",style: TextStyle(letterSpacing: 1,fontWeight: FontWeight.w500))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row itementry(BuildContext context,String txt,String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/50,
              height: MediaQuery.of(context).size.width/50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width/50),
            Text("$txt",style: TextStyle(color: Colors.white))
          ],
        ),
        Text("Rs $price",style: TextStyle(color: Colors.white))
      ],
      );
  }
}