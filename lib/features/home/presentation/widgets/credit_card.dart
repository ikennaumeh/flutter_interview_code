import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final List<Color> colors;
  CreditCard({this.colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 160,
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              offset: Offset(1,1),
              blurRadius: 10.0,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: colors,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding:EdgeInsets.only(left: 10.0),
                    child: Image.asset("assets/images/visa-pay-logo.png")),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.more_horiz, color: Colors.white,),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "**** **** **** 8014")
                ], style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 25.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Card Holder", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                      Text("Linday Johnson", style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Expires", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),),
                      Text("08/21", style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}