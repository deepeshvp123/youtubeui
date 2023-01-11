import 'package:flutter/material.dart';

class content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cont(
            img: "assets/image/images.jpg",
            imag2: "assets/image/tom an jerry.jpg",
            title: "Tom & Jerry  | Tom & Jerry in full screen | classic cartoon",
            subtitle: "WB kids 29 crore views.1 years ago",
            icon: Icons.more_vert),
        cont(
            img: "assets/image/gott.jpg",
            imag2: "assets/image/got.jpg",
            title: "Game Of Thrones | Official Series Trailer(HBO)",
            subtitle: "Game of thrones . 38 lakh Views. 1 years ago",
            icon: Icons.more_vert),
        cont(
            img: "assets/image/aj.jpg",
            imag2: "assets/image/aj thumb.jpg",
            title: "The best way to improve your skills.....",
            subtitle: "Aj gaming zone | 2.2 crore views. 1 years ago",
            icon: Icons.more_vert),
        cont(
            img: "assets/image/g4k.jpg",
            imag2: "assets/image/g4.png",
            title: "BEST GOAL KEEPER GLOVES GIVEAWAY",
            subtitle: "G4 goalkeeping | 19k views 2 month ago",
            icon: Icons.more_vert),
        cont(
            img: "assets/image/kari.jpg",
            imag2: "assets/image/karikk.png",
            title: "smile please! | comedy | karikk",
            subtitle: "2.6 crore views . 2 years",
            icon: Icons.more_vert)
      ],
    );
  }
}

class cont extends StatelessWidget {
  final String img;
  final String imag2;
  final String title;
  final String subtitle;
  final IconData icon;
  cont({
    required this.img,
    required this.imag2,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.fill)),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(imag2),
              ),
              title: Text(
                title,
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                subtitle,
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
              trailing: Icon(icon),
            )
          ],
        )
      ],
    );
  }
}
