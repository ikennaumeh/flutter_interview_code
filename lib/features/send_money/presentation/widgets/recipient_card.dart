import 'package:flutter/material.dart';

class RecipientCard extends StatelessWidget {
  final Color color;
  final String image;
  final String name;

  RecipientCard({this.color, this.image, this.name});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/profile.jpg"),
                ),
              ),

            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name,
                textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 14.0, letterSpacing: 0.2), ),
            )
          ],
        ),
      ),
    );
  }
}