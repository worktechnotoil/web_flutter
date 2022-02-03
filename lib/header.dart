// ignore_for_file: sdk_version_ui_as_code

import 'package:flutter/material.dart';
import 'package:flutter_webpage/footer.dart';
import 'package:flutter_webpage/resposive.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child: Row(
        children: <Widget>[
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.message_rounded,
                  color: Colors.blue,
                ),
                iconSize: 30,
              ),
              const Text(
                "Ask Me",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.blue,
                    fontSize: 30),
              ),
            ],
          ),
          
          
          Spacer(),
          if (!isMobile(context))
            Row(
              children: [
                NavItem(
                  title: 'abouts Us',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'FAQs',
                  tapEvent: () {},
                ),
              MaterialButton(
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  )),
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                 MaterialButton(
                  color: Colors.blue,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  )),
                  onPressed: () {},
                  child: const Text(
                    "SignUp",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          if (isMobile(context))
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                })
        ],
      ),
    );
  }
}
