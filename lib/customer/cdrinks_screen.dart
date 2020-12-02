import 'package:flutter/material.dart';

class CdrinksScreen extends StatefulWidget {
  @override
  _CdrinksScreenState createState() => _CdrinksScreenState();
}

class _CdrinksScreenState extends State<CdrinksScreen> with TickerProviderStateMixin {
  
  TabController tabControllerDomain, tabControllerActivity, tabControllerType;
  final selectedColor = Colors.black;
  int currentTabDomain, currentTabActivity, currentTabType;

  @override
  void initState() {
    super.initState();
    tabControllerDomain = TabController(length: 4, vsync: this);
    tabControllerActivity = TabController(length: 4, vsync: this);
    tabControllerType = TabController(length: 4, vsync: this);
    currentTabDomain = 0;
    currentTabActivity = 0;
    currentTabType = 0;
  }

  void gotToDomain(int index) {
    this.tabControllerDomain.animateTo(index);
    setState(() {
      this.currentTabDomain = index;
    });
  }

  void goToActivity(int index) {
    this.tabControllerActivity.animateTo(index);
    setState(() {
      this.currentTabActivity = index;
    });
  }

  void goToType(int index) {
    this.tabControllerType.animateTo(index);
    setState(() {
      this.currentTabType = index;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios),
                          SizedBox(width: MediaQuery.of(context).size.width/20),
                          Text("Drinks",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.bold )),
                        ],
                      ),
                      Icon(Icons.shopping_cart,size: MediaQuery.of(context).size.width/14,color: Colors.grey,)
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
            Divider(color: Color.fromRGBO(0, 209, 143, 1),),
            Container(
              height: MediaQuery.of(context).size.height/17,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  buildContainer("All", 0),
                  buildContainer("Noodies & Pasta", 1),
                  buildContainer("Ready to eat", 2),
                  buildContainer("Ready to coook", 3),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height/1.6,
                child: ListView(
                  children: <Widget>[
                    productwithbutton(context,"assets/food1.png"),
                    productwithbutton(context,"assets/food2.png"),
                    productwithcounter(context,"assets/food3.png"),
                    productwithcounter(context,"assets/food1.png"),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: 
          Container(
            height: MediaQuery.of(context).size.height/15,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.black,
                        size: 32,
                      ),
                      Text("Home")
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Image.asset("assets/shoplogo.png"),
                      Text("Shop")
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Image.asset("assets/orderlogo.png"),
                      Text("My Orders")
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Image.asset("assets/accountlogo.png"),
                      Text("Account")
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }

  Widget productwithbutton(BuildContext context,String url) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("$url",height: MediaQuery.of(context).size.width/7,width: MediaQuery.of(context).size.width/7),
                SizedBox(width: MediaQuery.of(context).size.width/70,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2 mins Maggie Noodies"),
                    Row(
                      children: [
                        Text("400 gm"),
                        Icon(Icons.keyboard_arrow_down,color: Color.fromRGBO(0, 209, 143, 1))
                      ],
                    ),
                    Text("82 Rs"),
                  ],
                ),
              ],
            ),
            GestureDetector(
              child: Container(
                width: MediaQuery.of(context).size.width/5,
                height: MediaQuery.of(context).size.width/15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color : Colors.black)
                ),
                child: Center(child: Text("Add",style: TextStyle(color: Color.fromRGBO(0, 209, 143, 1)),)),  
              ),
            )
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height/50),
      ],
    );
  }

  Widget productwithcounter(BuildContext context,String url) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("$url",height: MediaQuery.of(context).size.width/7,width: MediaQuery.of(context).size.width/7),
                SizedBox(width: MediaQuery.of(context).size.width/70,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2 mins Maggie Noodies"),
                    Row(
                      children: [
                        Text("400 gm"),
                        Icon(Icons.keyboard_arrow_down,color: Color.fromRGBO(0, 209, 143, 1))
                      ],
                    ),
                    Text("82 Rs"),
                  ],
                ),
              ],
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
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height/50),
      ],
    );
  }

  GestureDetector buildContainer(String name, int index) {
    return GestureDetector(
      onTap: () {
        goToType(index);
      },
      child: Container(
        padding: EdgeInsets.all(14.0),
        decoration: currentTabType == index
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2.0,
                    color: Colors.red,
                  ),
                ),
              )
            : null,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontWeight:
                  currentTabType == index ? FontWeight.w900 : FontWeight.normal,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }

}