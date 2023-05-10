// ignore_for_file: sort_child_properties_last, prefer_const_constructors, unused_label, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerheight = 80.0;

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        color: bottomContainerColor,
        padding: EdgeInsets.only(bottom: 20.0),
        height: bottomContainerheight,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
      ),
    );
  }
}
