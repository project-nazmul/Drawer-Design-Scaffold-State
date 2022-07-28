import 'package:flutter/material.dart';

class TextDesign extends StatelessWidget {
  const TextDesign({Key? key,required this.text,required this.fs,required this.fw}) : super(key: key);

  final String text;
  final FontWeight fw;
  final double fs;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: Colors.white,
      fontWeight: fw,
      fontSize: fs,
    ),
    );
  }
}
