import 'package:flutter/material.dart';

class Cconfirmorder2Screen extends StatefulWidget {
  @override
  _Cconfirmorder2ScreenState createState() => _Cconfirmorder2ScreenState();
}

class _Cconfirmorder2ScreenState extends State<Cconfirmorder2Screen> {
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
                    Text("Confirm Order",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.bold )),
                  ],
                ),
              ),
              Divider(color: Color.fromRGBO(0, 209, 143, 1)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Laxmi Kirana Store",style: TextStyle(color: Color.fromRGBO(0, 209, 143, 1),fontSize: MediaQuery.of(context).size.width/25),),
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ajay Stationary Shop",style: TextStyle(color: Color.fromRGBO(0, 209, 143, 1),fontSize: MediaQuery.of(context).size.width/25),),
                    SizedBox(height: MediaQuery.of(context).size.height/50),
                    fooditem(context,"Camel Nootbook","70 gm","45"),
                    SizedBox(height: MediaQuery.of(context).size.height/50),
                    fooditem(context,"Natraj Pencil","70 gm","45"),
                    SizedBox(height: MediaQuery.of(context).size.height/50),
                    fooditem(context,"Non-Dust Eraser","70 gm","45"),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50),
              Center(
                child: Text("+ Add More",style: TextStyle(fontSize: MediaQuery.of(context).size.width/22,fontWeight: FontWeight.bold,color: Color.fromRGBO(0, 209, 143, 1)),),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("You would also like...",style: TextStyle(fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width/20),),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          categories(context,"assets/burger.png","Noodles"),
                          SizedBox(width: MediaQuery.of(context).size.width/20,),
                          categories(context,"assets/burger.png","Pasta"),
                          SizedBox(width: MediaQuery.of(context).size.width/20,),
                          categories(context,"assets/burger.png","Baked peanuts"),
                          SizedBox(width: MediaQuery.of(context).size.width/20,),
                          categories(context,"assets/burger.png","Pepsi"),
                          SizedBox(width: MediaQuery.of(context).size.width/20,),
                          categories(context,"assets/burger.png","Noodles"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]
          ),
        ),
        bottomNavigationBar: bottommobile(context,"2","6","1054"),
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

  Container bottommobile(BuildContext context,String txt1,String txt2,String total) {
    return Container(
        height: MediaQuery.of(context).size.height/12,
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
            Image.asset("assets/shopingbasket.png"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$txt1 Stores"),
                Text("$txt2 Items",),
                Text("Item Total - $total",style: TextStyle(fontWeight: FontWeight.bold),),
              ]
            ),
            Container(
              width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/30,
              // color: Colors.red,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color.fromRGBO(0, 209, 143, 1),
              ),
              child: Center(child: Text("Place Order",style: TextStyle(color: Colors.white),)),
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
    );
  }
}