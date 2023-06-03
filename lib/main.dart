import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF270f0a),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          elevation: 0,
        ),
        drawer: Drawer(), // Customize your navigation drawer here
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.brown, Colors.blue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
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
              // Search Bar
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: Material(
                  elevation: 3, // Set the elevation value here
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF101014),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xFF2e2122), width: 1),
                    ),
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Color(0xFF666668), size: 25),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Color(0xFF666668), fontSize: 16),
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(color: Color(0xFF666668), fontSize: 13),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Row of Rounded Buttons : Icon and Text
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 13),
                    RoundedButton(icon: Icons.favorite_border_outlined, text: 'For you'),
                    RoundedButton(icon: Icons.star_border_outlined, text: 'New'),
                    RoundedButton(icon: Icons.local_fire_department_outlined, text: 'Trending'),
                    RoundedButton(icon: Icons.food_bank_outlined, text: 'Food'),
                  ],
                ),
              ),
              // The Cards for different Items: Description, Price etc.
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(10),
                  children: [
                    CardWidget(
                      image: 'assets/image1.jpg',
                      onSave: () {
                        // Save icon on tap callback
                      },
                      text1: 'Text 1',
                      text2: 'Text 2',
                    ),
                    CardWidget(
                      image: 'assets/image2.jpg',
                      onSave: () {
                        // Save icon on tap callback
                      },
                      text1: 'Text 3',
                      text2: 'Text 4',
                    ),
                    // Add more CardWidget as needed
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final String text;

  RoundedButton({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Color(0xFF101014),
        borderRadius: BorderRadius.circular(20), border: Border.all(color: Color(0xFF2e2122), width: 1)
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 20, bottom: 8, top: 8),
        child: Row(
          children: [
            Icon(icon, color: Color(0xFFadadae), size: 22,),
            SizedBox(width: 5),
            Text(
              text,
              style: TextStyle(color: Color(0xFFadadae), fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String image;
  final VoidCallback onSave;
  final String text1;
  final String text2;

  CardWidget({
    required this.image,
    required this.onSave,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  text1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  text2,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: Icon(Icons.save),
              onPressed: onSave,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              'Bottom Left Text',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Text(
              'Bottom Right Text',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}