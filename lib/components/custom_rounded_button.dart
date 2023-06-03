import 'package:flutter/material.dart';

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