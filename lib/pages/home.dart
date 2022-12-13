import 'package:flutter/material.dart';
import '../util/bubble_stories.dart';
import '../util/user_post.dart';
class UserHome extends StatelessWidget{
  final List people=[
    'Ali','Haider','Rismha','Aresha','Bilal','Mouzim','Rustam','Akbar'

  ];
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
  body: Column(
    children: [
     Container(
       height: 130,
       child: ListView.builder(scrollDirection:Axis.horizontal,itemCount:people.length,itemBuilder: (context, index) {
         return BubbleStories(text: people[index]);
       },)
        ),

        Expanded(
          child: ListView.builder(itemCount: people.length,itemBuilder: (context, index) {
            return UserPost(name: people[index]);
          },),
        ),





    ],
  )
);
  }

}
