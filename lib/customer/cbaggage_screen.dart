import 'package:flutter/material.dart';

class CbaggageScreen extends StatefulWidget {
  @override
  _CbaggageScreenState createState() => _CbaggageScreenState();
}

class _CbaggageScreenState extends State<CbaggageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          tooltip: "Create new Baggage",
          backgroundColor: Colors.grey,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    baggagetags(context,"Weekly Rashon"),
                    baggagetags(context,"Stationary items"),
                    baggagetags(context,"Kitchen items"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget baggagetags(BuildContext context,String txt) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width/6,
          // color: Colors.red,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border:Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$txt",style: TextStyle(fontSize: MediaQuery.of(context).size.width/22),),
                Row(
                  children: [
                    Image.asset("assets/deletelogo.png"),
                    SizedBox(width: MediaQuery.of(context).size.width/20),
                    Image.asset("assets/editlogo.png"),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height/100),
      ],
    );
  }
}