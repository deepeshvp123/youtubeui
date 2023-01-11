import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtubeui/appbar.dart';
import 'package:youtubeui/content.dart';
import 'package:youtubeui/heading.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: youtube(),
    theme: ThemeData(brightness: Brightness.dark),
    debugShowCheckedModeBanner: false,
  ));
}

class youtube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          appbarr(),
         
          SliverList(delegate: 
          SliverChildListDelegate(
            [
              heading(),
              const SizedBox(height:4 ,),
              content(),
              
            ]
          ))

        ],

      


      ),
    
     bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex:0,
          selectedItemColor: Colors.white,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: "home"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                activeIcon: Icon(Icons.explore),
                label: "explore"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                activeIcon: Icon(Icons.add_circle),
                label: "add"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined),
                activeIcon: Icon(Icons.subscriptions),
                label: "subscription"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined),
                activeIcon: Icon(Icons.video_library),
                label: "library")
          ]),
          

    );
    
  }
}
