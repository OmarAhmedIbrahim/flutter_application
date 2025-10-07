
import 'package:flutter/material.dart';
import 'package:flutter_application/components/collection.dart';
import 'package:flutter_application/components/intro.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Intro(
            height: 500,
            title: "Your Customers, Our Priority:\n24/7 Seamless Support",
            description:
                "Professional customer service that never sleeps. We handle your calls, texts,\nand inquiries so you can focus on growing your business",
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Exceptional Customer Service, Around the Clock ",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff052861),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "At ConnectWise Solutions, we provide 24/7 outsourced customer service that ensures your\ncustomers are never left waiting. As a dedicated contractor, we seamlessly integrate with your\nbusiness to handle calls, texts, and inquiries at any hour—whether it's after 10 PM or during peak hours.",
                style: TextStyle(color: Color(0xffaaa5a9), fontSize: 17),
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              Text(
                "Our expertly trained team becomes an extension of your brand, delivering exceptional service that keeps your customers\nsatisfied and loyal. With cutting-edge technology and a commitment to excellence, we connect your business to your\ncustomers, no matter the time or place.",
                style: TextStyle(color: Color(0xffaaa5a9), fontSize: 17),
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 70),
              Text(
                "Why Choose Us ",
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
