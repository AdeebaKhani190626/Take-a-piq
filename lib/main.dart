import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF200f0a),
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
              colors: [Color(0xFF200f0a), Color(0xFF4d1f10), Color(0xFF683e2b), Color(0xFF613525), Color(0xFF17383f)],
              stops: [0.2, 0.3, 0.4, 0.5, 0.9],
              begin: Alignment.topRight,
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
              SizedBox(height: 30),
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
                  padding: EdgeInsets.only(left:10, right: 10, top: 15, bottom: 15),
                  childAspectRatio: 0.75,
                  children: [
                    CardWidget(
                      image: 'assets/blueberry.jpg',
                      onSave: () {
                        // Save icon on tap callback
                      },
                    ),
                    CardWidget(
                      image: 'assets/hand strawberry.jpg',
                      onSave: () {
                        // Save icon on tap callback
                      },
                    ),
                    CardWidget(
                      image: 'assets/mango juice.jpg',
                      onSave: () {
                        // Save icon on tap callback
                      },
                    ),
                    CardWidget(
                      image: 'assets/image4.jpg',
                      onSave: () {
                        // Save icon on tap callback
                      },
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
  final double width;
  final double height;

  CardWidget({
    required this.image,
    required this.onSave,
    this.width = 200,
    this.height = 450,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.all(5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                height: height,
                width: width,
                image,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.save_alt_outlined,
                    color: Colors.white,
                    size: 14,
                  ),
                  onPressed: onSave,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                'Item Name',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Text(
                'Price',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}