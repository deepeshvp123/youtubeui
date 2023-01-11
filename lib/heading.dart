import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Container(
                height: 27,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black),
                // color: Colors.black,
                child: Icon(
                  Icons.explore,
                  size: 20,
                ),
              ),
            ),
            head(text: "All"),
            head(text: "New to You"),
            head(text: "Music"),
            head(text: "Football"),
            head(text: "Mohanlal"),
            head(text: "Cooking"),
            head(text: "Farm"),
            head(text: "Game Of Throns"),
            head(text: "Puma"),
          ],
        ),
      ),
    );
  }
}

class head extends StatelessWidget {
  final String text;
  head({required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 15),
          child: Container(
            height: 28,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white10,
                )),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
              child: Center(
                  child: Text(
                text,
                style: TextStyle(fontSize: 12),
              )),
            ),
          ),
        )
      ],
    );
  }
}
