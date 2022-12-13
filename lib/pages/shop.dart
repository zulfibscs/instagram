import 'package:flutter/material.dart';

import '../util/shop_grid.dart';

class UserShop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shop',style: TextStyle(fontWeight: FontWeight.bold,),),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.calendar_today),
                ),
                Icon(Icons.menu),
              ],
            )
          ],
        ),
      ),
      body:
      Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
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
          Expanded(child: ShopGrid()),
        ],
      ),
    );
  }

}