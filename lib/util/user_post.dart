import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final  String name;
  const UserPost({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(height: 10,),
                  // name
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height:300,
          color: Colors.grey,
        ),
      //  below the post button and comment
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           Row(
             children: [
               Icon(Icons.favorite),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 12.0),
                 child: Icon(Icons.chat_bubble_outline),
               ),
               Icon(Icons.share),
             ],
           ),
              Icon(Icons.bookmark)
            ],
          ),
        ),
        //Like
        Padding(
          padding: const EdgeInsets.only(left: 8,),
          child: Row(
            children: [
              Text(' Like by '),
              Text(' bahadar Khan ',style: TextStyle(fontWeight: FontWeight.bold),),
              Text(' and '),
              Text(' others ',style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      //  Caption
        RichText(text: TextSpan(
          children: [
            TextSpan(text:'bahadar khan',style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'i turn the dirt throwing into riches till in filty ')
          ]
        )),
      ],

    );
  }
}


