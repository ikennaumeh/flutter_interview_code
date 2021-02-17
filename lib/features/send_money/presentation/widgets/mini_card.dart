import 'package:flutter/material.dart';

class MiniCard extends StatelessWidget {
  final Color color;
  final String text;

  MiniCard({this.color, this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        width: 154.0,
        height: 120.0,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(6.0)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:EdgeInsets.only(left: 10.0),
              child: Image.asset("assets/images/visa-pay-logo.png"),),
            SizedBox(height: 13.0,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: text)
                  ], style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "\$1,345.56",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 0.6
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}