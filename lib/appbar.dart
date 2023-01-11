import 'package:flutter/material.dart';

class appbarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leadingWidth: 100,
      // ignore: prefer_const_constructors
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: const Image(image: AssetImage("assets/image/yt.png")),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined)),
        IconButton(
            iconSize: 40,
            onPressed: () {},
            icon: const CircleAvatar(
              foregroundImage: AssetImage("assets/image/jhon.jpg"),
            ))
      ],
    );
    
  }
}
