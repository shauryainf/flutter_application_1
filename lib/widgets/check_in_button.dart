import 'package:flutter/material.dart';

Widget button(BuildContext context, Function onPressed, String text) {
  return ElevatedButton(
    onPressed: () => onPressed(),
    child: Text(text),
  );
}
