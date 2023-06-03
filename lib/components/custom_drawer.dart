import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF200f0a),
        width: MediaQuery.of(context).size.width * 0.75, // Specify the desired width here (75% of the screen width)
        child: ListView.separated(
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              // Logo and header
              return Container(
                height: 300,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF200f0a),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Can also add Image
                      /* Image.asset(
                        'assets/white logo within.jpg',
                        width: 50,
                        height: 50,
                      ), */
                      SizedBox(height: 100),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text: 'Take a ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'p',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                WidgetSpan(
                                  child: Text(
                                    'i',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFffae00),
                                    ),
                                  ),
                                  alignment: PlaceholderAlignment.baseline,
                                  baseline: TextBaseline.alphabetic,
                                ),
                              ],
                            ),
                            TextSpan(
                              text: 'q',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 3),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text: 'and find ',
                              style: TextStyle(
                                color: Color(0xFFc2b3ad),
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(
                              text: 'out',
                              style: TextStyle(
                                color: Color(0xFFc2b3ad),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return ListTile(
              title: Text(
                getTitleForIndex(index),
                style: TextStyle(
                    color: Color(0xFFc2b3ad),
                    fontWeight: FontWeight.w300
                ),
              ),
              leading: getIconForIndex(index),
              onTap: () {
                // Handle onTap for each list item
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Color(0xFFc2b3ad),
              thickness: 0.2,
              height: 1,
            );
          },
          itemCount: 5, // Number of items in the list (including the logo/header)
        ),
      ),
    );
  }

  String getTitleForIndex(int index) {
    switch (index) {
      case 1:
        return 'Home';
      case 2:
        return 'Profile';
      case 3:
        return 'Settings';
      case 4:
        return 'Logout';
      default:
        return '';
    }
  }

  Icon getIconForIndex(int index) {
    switch (index) {
      case 1:
        return Icon(Icons.home, color: Color(0xFFc2b3ad));
      case 2:
        return Icon(Icons.person, color: Color(0xFFc2b3ad));
      case 3:
        return Icon(Icons.settings, color: Color(0xFFc2b3ad));
      case 4:
        return Icon(Icons.logout, color: Color(0xFFc2b3ad));
      default:
        return Icon(Icons.menu, color: Color(0xFFc2b3ad));
    }
  }
}