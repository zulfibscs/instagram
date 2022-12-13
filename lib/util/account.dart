import 'package:flutter/material.dart';
import 'accont_tab3.dart';
import 'account_tab1.dart';
import 'account_tab2.dart';
import 'account_tab4.dart';
import 'bubble_stories.dart';
class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 20),
              //profile
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,

                    decoration: BoxDecoration(
                        color: Colors.grey,
                      shape: BoxShape.circle
                    ),
                  ),
                  Expanded(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Follower,following,
                        Column(
                      children: [
                        Text('239',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('Posts'),
                      ],
                    ),
                       Column(
                        children: [
                          Text('3456',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text('Follower'),
                        ],
                      ),
                       Column(
                        children: [
                          Text('21323',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text('Following'),
                        ],
                      ),],
                    ),
                  ),
                ],
              ),
            ),
            //  name and bio
           Container(
             margin: EdgeInsets.only( left: 13,top: 12),
             child:
                 Text('Zulfi',style: TextStyle(fontWeight: FontWeight.bold),),
           ),
            Container(
              margin: EdgeInsets.only( left: 13,top: 4),

              child:
              Text('i creat game and app'),
            ),
            Container(
              margin: EdgeInsets.only( left: 13,top: 4),

              child:
              Text('www.youtube.com',style: TextStyle(color: Colors.blue),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25),
              child: Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Edit Profile',)),
                      ),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)
                      ),
                    ),
                  ),
                ),Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Ad Tools ',)),
                      ),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)
                      ),
                    ),
                  ),
                ),Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Insights',)),
                      ),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)
                      ),
                    ),
                  ),
                ),
              ],),
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Row(
               children: [
                 BubbleStories(text: 'Story 1'),
                 BubbleStories(text: 'Story 2'),
                 BubbleStories(text: 'Story 3'),
                 BubbleStories(text: 'Story 4'),
               ],
             ),
           ),
            TabBar(tabs:[
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ] ),
       Expanded(child:TabBarView(
         children: [
           AccontTab1(),
           AccontTab2(),
           AccontTab3(),
           AccontTab4(),
         ],
       ))
          ],
        ),
      ),
    );
  }
}
