import 'package:flutter/material.dart';
import 'package:onlinebook/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final  press;
  final double  verticalPadding;
  final double fontSize;
  const RoundedButton({Key? key, required this.text, required this.press, this.verticalPadding =16, this.fontSize =16}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(vertical: verticalPadding,horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(offset: Offset(0,15),
                blurRadius: 30,
                color: Color(0xFF666666).withOpacity(.11),
              ),
            ]
        ),
        child: Text(text,
            style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}

