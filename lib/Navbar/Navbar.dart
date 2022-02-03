import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 24),
                ),
              ],
            ),
            const Text(
              "Go Ahead,Ask Me! feed your intellectual Curiosity",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
            Row(
              children: <Widget>[
                const Text(
                  "About Us",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "FAQs",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.white,
                  shape: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.blue,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  onPressed: () {},
                  child: const Text(
                    "Singup",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
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
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 24),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: <Widget>[
                  const Text(
                    "About Us",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    "FAQs",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 30,
                  ),

                  MaterialButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  // OutlinedButton(
                  //   onPressed: () {
                  //     // Respond to button press
                  //   },
                  //   child: Text(" login"),
                  // ),
                  const SizedBox(
                    width: 30,
                  ),
                  MaterialButton(
                    color: Colors.blue,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    onPressed: () {},
                    child: const Text(
                      "Singup",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
