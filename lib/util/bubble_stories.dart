import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;

  const BubbleStories({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
        )),
        SizedBox(height: 10,),
        Text(text)
      ],
    ),);
  }
}
