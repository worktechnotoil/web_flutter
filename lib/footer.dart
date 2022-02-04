import 'package:flutter/material.dart';
import 'package:flutter_webpage/custom_icon_button.dart';
import 'package:flutter_webpage/resposive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? DesktopFooter() : MobileFooter();
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        color: Color(0xFFe0e6f2),
        height: screenHeight * 0.20,
        // margin: EdgeInsets.symmetric(
        //   vertical: 20,
        // ),
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
            SizedBox(
              height: 10,
            ),

              Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.05, right: screenWidth * 0.05),
           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Copyrights © 2021 AskMe',
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: <Widget>[
                    NavItem(
                      title: 'Privacy Policy',
                      tapEvent: () {},
                    ),
                    NavItem(
                      title: 'Term & condition',
                      tapEvent: () {},
                    ),
                    NavItem(
                      title: 'Help & support',
                      tapEvent: () {},
                    ),
                    NavItem(
                      title: 'Contact Us',
                      tapEvent: () {},
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
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
            ),),
          ],
        ));
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Color(0xFFe0e6f2),
      width: double.infinity,
      // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: <Widget>[

          Align(
            alignment: Alignment.center,
            child: Text(
              "Askme",
              style: TextStyle(fontSize: 24, color: Colors.blue),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Copyrights © 2021 AskMe',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(
            height: 5,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              NavItem(
                title: 'Privacy Policy',
                tapEvent: () {},
              ),
              NavItem(
                title: 'Term & condition',
                tapEvent: () {},
              ),
              NavItem(
                title: 'Help & support',
                tapEvent: () {},
              ),
              NavItem(
                title: 'Contact Us',
                tapEvent: () {},
              ),
            ],
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
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
          )
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key key, this.title, this.tapEvent}) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyle(
                color: Colors.grey,
              fontSize: 12),
        ),
      ),
    );
  }
}
