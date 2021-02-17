import 'package:flutter/material.dart';

// view that shows how the transaction UI should look
class TransactionTile extends StatelessWidget {
  final String amount;
  final String name;
  final String date;

  TransactionTile({this.amount, this.name, this.date});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 343.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/profile.jpg")
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(text: "to:", style: TextStyle(fontSize: 12.0, color: Colors.black26, fontWeight: FontWeight.w300,)),
                          TextSpan(text: name, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.2, color: Colors.black87)),
                        ]
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 13.0,
                      letterSpacing: 0.2,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(amount,style: TextStyle(fontSize: 16, color: Colors.redAccent, letterSpacing: 0.1, fontWeight: FontWeight.w600,),),
          ),
        ],
      ),
    );
  }
}