import 'package:flutter/material.dart';

import 'menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              NavItem(
                title: 'abouts Us',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
              NavItem(
                title: 'FAQs',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
             MaterialButton(
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              
              SizedBox(height: 10),
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
          ),
        ),
      ),
    );
  }
}
