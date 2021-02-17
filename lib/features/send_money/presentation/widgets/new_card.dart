import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        width: 154.0,
        height: 120.0,
        child: FDottedLine(
          color: Colors.grey,
          corner: FDottedLineCorner.all(6.0),
          space: 2.0,
          strokeWidth: 1.0,
          dottedLength: 7.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  color: Color(0xff10C971),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.add, size: 16.0,color: Colors.white,),
              ),
              SizedBox(height: 13.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "New \nCredit Card",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                    letterSpacing: 0.2,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}