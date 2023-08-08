import 'package:flutter/material.dart';
import 'package:melkino/constant/color.dart';

SizedboxH(double height) {
  return SizedBox(
    height: height,
  );
}

titr(String text) {
  return Row(
    children: [
      Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2), color: MyColor.pink),
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        text,
        style: TextStyle(
            color: MyColor.gray,
            fontFamily: 'Kalame',
            fontSize: 15,
            fontWeight: FontWeight.w500),
      ),
    ],
  );
}
