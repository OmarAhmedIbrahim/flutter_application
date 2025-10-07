import 'package:flutter_application/components/collection.dart';
import 'package:flutter_application/components/intro.dart';
import 'package:flutter/material.dart';

class Aboutusscreen extends StatelessWidget {
  const Aboutusscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Intro(
            title: "About us",
            description:
                "With multilingual capabilities and a commitment to excellence,\nwe ensure every interaction leaves a positive impression.",
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Our Story ",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff052861),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Founded with a vision to redefine outsourced customer service, ConnectWise Solutions bridges the gap between businesses and their customers.\nWe understand that every call, text, or inquiry is an opportunity to build loyalty.",
                style: TextStyle(color: Color(0xffaaa5a9), fontSize: 17),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              Text(
                "That's why we've built a platform that delivers fast, reliable, and personalized support, tailored to your unique needs. Our technology-first\napproach ensures seamless integration with your existing systems while maintaining the human touch that customers value",
                style: TextStyle(color: Color(0xffaaa5a9), fontSize: 17),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 70),
              Text(
                "Our Values ",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff052861),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "We're committed to delivering exceptional results for every project.",
                style: TextStyle(color: Color(0xffaaa5a9), fontSize: 17),
              ),
              SizedBox(height: 70),
              Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  Collection(),
                  Collection(),
                  Collection(),
                  Collection(),
                ],
              ),
              SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }
}
