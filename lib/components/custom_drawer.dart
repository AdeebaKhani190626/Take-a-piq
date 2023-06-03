import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF200f0a),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 120,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF200f0a),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/logo orange.png',
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(color: Color(0xFFc2b3ad)),
              ),
              onTap: () {
                // Handle Home tap
              },
            ),
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(color: Color(0xFFc2b3ad)),
              ),
              onTap: () {
                // Handle Profile tap
              },
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(color: Color(0xFFc2b3ad)),
              ),
              onTap: () {
                // Handle Settings tap
              },
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(color: Color(0xFFc2b3ad)),
              ),
              onTap: () {
                // Handle Logout tap
              },
            ),
          ],
        ),
      ),
    );
  }
}