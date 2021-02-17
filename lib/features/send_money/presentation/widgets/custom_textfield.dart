import 'package:flutter/material.dart';

//custom text field
class CustomTextField extends StatelessWidget {
  final String labelText;
  final String suffixText;
  final Widget prefixIcon;
  final Color labelColor;
  CustomTextField({
    @required this.labelText,
    this.suffixText,
    this.prefixIcon,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        height: 56,
        width: 343,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Color(0xffF0F1F4),
        ),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Color(0xffF0F1F4),
            labelText: labelText,
            suffixText: suffixText,
            labelStyle: TextStyle(
              color: labelColor,
            ),
            suffixStyle: TextStyle(
              color: Color(0xff613EEA),
            ),
            prefixIcon: prefixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.transparent,
                  style: BorderStyle.none
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff613EEA),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
