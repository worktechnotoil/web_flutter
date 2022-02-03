import 'package:flutter/material.dart';
import 'package:flutter_webpage/LandingPage/LandingPage.dart';

import 'package:flutter_webpage/header.dart';
import 'package:flutter_webpage/side_menu.dart';

import 'footer.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     endDrawer: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300
        ),
        child: SideMenu(),
      ),
      body: Container(
        decoration: BoxDecoration(
         
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
             // Navbar(),
             Header(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
               
              ),
              // Spacer(),
              // BottomBar()
             Footer()
            ],
          ),
        ),
      ),
    );
  }
}
