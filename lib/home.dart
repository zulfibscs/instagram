import 'package:flutter/material.dart';

class UserHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.transparent,
  elevation: 0,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Instagram'),
     Row(
       children: [
         Icon(Icons.add),
         Padding(
           padding: const EdgeInsets.all(15.0),
           child: Icon(Icons.favorite),
         ),
         Icon(Icons.share),
       ],
     )
    ],
  ),
),
  body: Center(child: Text('HOme')),
);
  }

}
