import 'package:flutter/material.dart';

import '../util/explore_grid.dart';

class UserSearch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.grey.shade200,
            child: Row(

              children: [
                Icon(Icons.search),
                Container(
                  child:
                  Text('Search'),
                )
              ],
            ),
          ),
        ),
      ),
      body:
      ExploreGrid(),
    );
  }

}