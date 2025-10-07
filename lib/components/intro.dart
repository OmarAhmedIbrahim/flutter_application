import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  Intro({
    super.key,
    this.height,
    required this.title,
    required this.description,
  });
  double? height;
  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height ?? 250,
      color: Color(0xff6621d6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          Center(
            child: Text(
              description,
              //"Professional customer service that never sleeps. We handle your calls, texts, \n              and inquiries so you can focus on growing your business",
              style: TextStyle(fontSize: 25, color: Colors.white),
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
