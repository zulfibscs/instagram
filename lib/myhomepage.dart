import 'package:flutter/material.dart';
import 'package:instagram/account.dart';
import 'package:instagram/reals.dart';
import 'package:instagram/search.dart';
import 'package:instagram/shop.dart';
import 'home.dart';

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // navigate around the bottom
 int _selectedIndex=0;
 void _navigateBottomNavBar(index){
   setState(() {
     _selectedIndex=index;
   });
 }
  final List<Widget> _children=[
    UserHome(),
    UserSearch(),
    UserReal(),
    UserShop(),
    UserAccount(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomNavBar,
        items: [

        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'real'),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'person'),


        ],

      ),

    );
  }
}