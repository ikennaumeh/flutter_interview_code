import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 343.0,
      decoration: BoxDecoration(
        color: Color(0xffF0F1F4),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Color(0xffF0F1F4),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Search transaction",  style: TextStyle(color: Color(0xffA6AAB4)),),
          ),
          suffixIcon: Icon(Icons.search, color: Color(0xffA6AAB4),),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.transparent,
                style: BorderStyle.none
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none,
            ),
          ),
        ),
      ),);
  }
}