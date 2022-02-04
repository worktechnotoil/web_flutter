import 'package:flutter/material.dart';
import 'package:flutter_webpage/resposive.dart';

class Book extends StatefulWidget {
  const Book({ Key key }) : super(key: key);

  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? Desktop() : Mobile();
  }
} 

class  Desktop extends StatelessWidget {
  const Desktop({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
      child: Row(
        children: [

          Text("fgfgdfjkgjgflfg")
        ],
      )
    );
  }
}

class  Mobile extends StatelessWidget {
  const Mobile({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

         
        ],
      )
    );
  }
}