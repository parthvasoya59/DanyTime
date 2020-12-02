import 'package:danytime/customer/caccount_screen.dart';
import 'package:danytime/customer/caddcard_screen.dart';
import 'package:danytime/customer/cbaggage_screen.dart';
import 'package:danytime/customer/cconfirmorder_screen.dart';
import 'package:danytime/customer/ccreaditcard_screen.dart';
import 'package:danytime/customer/ccreatebaggage_screen.dart';
import 'package:danytime/customer/clocation_screen.dart';
import 'package:danytime/customer/cmyorder_screen.dart';
import 'package:danytime/customer/cpayment_screen.dart';
import 'package:danytime/customer/cshop_screen.dart';
import 'package:danytime/customer/cshopsnearby_screen.dart';
import 'package:danytime/customer/csignin_screen.dart';
import 'package:flutter/material.dart';
import 'customer/cconfirmorder2_sceen.dart';
import 'customer/cdrinks_screen.dart';
import 'customer/chome_screen.dart';
import 'customer/csignup_scree.dart';
import 'customer/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen()
    );
  }
}