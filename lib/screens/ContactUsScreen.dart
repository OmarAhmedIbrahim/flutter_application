import 'package:flutter_application/widgets/collection.dart';
import 'package:flutter_application/widgets/intro.dart';
import 'package:flutter/material.dart';

class Contactusscreen extends StatelessWidget {
  const Contactusscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Intro(
            title: "Get In Touch",
            description:
                "Connect With Us Anytime, Anywhere We're here 24/7 to answer your questions \nand tailor a customer service solution for your business.",
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contact Information",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff052861),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "We're always excited to hear about new projects and opportunities. \nReach out to us through any of the channels below.",
                style: TextStyle(color: Color(0xffaaa5a9), fontSize: 17),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
             
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
 