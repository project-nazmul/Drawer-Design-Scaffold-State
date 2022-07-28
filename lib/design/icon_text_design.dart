import 'package:day17homework/design/text_design.dart';
import 'package:flutter/material.dart';

class IconTextDesign extends StatelessWidget {
  const IconTextDesign({Key? key,required this.text,required this.ic}) : super(key: key);

  final String text;
  final IconData ic;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(ic,color: Colors.white,),
        const SizedBox(width: 25,),
        TextDesign(fs: 14, fw: FontWeight.normal, text: text,)
      ],
    );
  }
}
