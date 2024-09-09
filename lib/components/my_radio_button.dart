import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  MyRadioButton({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onTap,
  });

  String title;
  String value;
  String groupValue;
  var onTap;
  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 758;
    double width = MediaQuery.of(context).size.width / 360;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: width * 8,
        ),
        Radio(
          value: widget.value,
          groupValue: widget.groupValue,
          onChanged: widget.onTap,



        ),
        Text(
          widget.title,
          style: TextStyle(
            fontSize: width * 15,
            color: Color(0xff878787),
          ),
        ),
      ],
    );
  }
}
