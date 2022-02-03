import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_icon_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Color(0xFFe0e6f2),
      height: screenHeight * 0.20,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 70,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Askme",
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 1.5,
              width: screenWidth * 0.9,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.05, right: screenWidth * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('copyright Askme \u00a9 2022',
                    style: TextStyle(color: Colors.grey, fontFamily: 'Barlow')),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "privacy policy",
                      style: TextStyle(
                          // decoration: TextDecoration.underline,
                          ),
                    ),
                    SizedBox(width: screenWidth * 0.010),
                    const Text(
                      "Term & condition",
                      style: TextStyle(
                          //decoration: TextDecoration.underline,
                          ),
                    ),
                    SizedBox(width: screenWidth * 0.010),
                    const Text(
                      "Help & support",
                      style: TextStyle(
                          // decoration: TextDecoration.underline,
                          ),
                    ),
                    SizedBox(width: screenWidth * 0.010),
                    const Text(
                      "contact us",
                      style: TextStyle(
                          //decoration: TextDecoration.underline,
                          ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: screenWidth * 0.010),
                    const CustomIconButton(
                      iconData: FontAwesomeIcons.facebook,
                      url: 'https://www.facebook.com/login/',
                      color: Colors.blue,
                    ),
                    SizedBox(width: screenWidth * 0.010),
                    const CustomIconButton(
                      iconData: FontAwesomeIcons.twitter,
                      url:
                          'https://docs.github.com/en/issues/organizing-your-work-with-project-boards/managing-project-boards/linking-a-repository-to-a-project-board',
                      color: Colors.grey,
                    ),
                    SizedBox(width: screenWidth * 0.01),
                    const CustomIconButton(
                      iconData: FontAwesomeIcons.instagram,
                      url:
                          'https://www.google.com/search?q=whatweb&oq=whatweb&aqs=chrome..69i57.23979j0j15&sourceid=chrome&ie=UTF-8',
                      color: Colors.grey,
                    ),
                    SizedBox(width: screenWidth * 0.01),
                    const CustomIconButton(
                      iconData: FontAwesomeIcons.linkedin,
                      url:
                          'https://www.google.com/search?q=whatweb&oq=whatweb&aqs=chrome..69i57.23979j0j15&sourceid=chrome&ie=UTF-8',
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
