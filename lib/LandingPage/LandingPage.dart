import 'package:flutter/material.dart';
import 'package:flutter_webpage/custom_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Have a question, problem or decision to make ?",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32.0,
                  color: Color(0xff0061b5)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Need specialist advice ?",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  color: Color(0xffe1884d)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Access our global directory of World Class Experts anywhere in the world and let them support, guide & advise you.",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              "Go Ahead, Ask Me ?",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              // margin: const EdgeInsets.all(15.0),
              // padding: const EdgeInsets.all(3.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search by name and Expertise',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "popular:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.grey),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: Center(
                      child: Text("sabnam mahammad",
                          style: TextStyle(fontSize: 14, color: Colors.grey))),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: Center(
                      child: Text("Leardership",
                          style: TextStyle(fontSize: 14, color: Colors.grey))),
                ),
                SizedBox(
                  width: 2,
                ),
                // Container(
                //   height: 20,
                //   decoration: BoxDecoration(
                //     border: Border.all(
                //       color: Colors.grey,
                //       width: 1,
                //     ),
                //   ),
                //   child: Center(
                //       child: Text("Team Building",
                //           style: TextStyle(fontSize: 14, color: Colors.grey))),
                // ),
                // SizedBox(
                //   width: 15,
                // ),
                // Container(
                //   height: 20,
                //   decoration: BoxDecoration(
                //     border: Border.all(
                //       color: Colors.grey,
                //       width: 1,
                //     ),
                //   ),
                //   child: Center(
                //       child: Text("Rect js",
                //           style: TextStyle(fontSize: 14, color: Colors.grey))),
                // )
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: const CustomIconButton(
                    iconData: FontAwesomeIcons.googlePlay,
                    url: 'https://www.facebook.com/login/',
                    color: Colors.blue,
                    title: 'get it on  googleplay',
                  ),
                ),
                CustomIconButton(
                  iconData: FontAwesomeIcons.appStore,
                  url:
                      'https://docs.github.com/en/issues/organizing-your-work-with-project-boards/managing-project-boards/linking-a-repository-to-a-project-board',
                  color: Colors.grey,
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 1.0),
        child: Image.asset(
          "assets/images/lp_image.png",
          width: width,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
