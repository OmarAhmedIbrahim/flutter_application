import 'package:flutter_application/constants/spacers.dart';
import 'package:flutter_application/constants/text_styles.dart';
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
            Spacers.heightMediumSpace(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contact Information",
                style: TextStyles.largeText(
                    color: Color(0xff052861),
                    fontWeight: FontWeight.bold,
                  ),
              ),
              SizedBox(height: 15),
              Text(
                "We're always excited to hear about new projects and opportunities. \nReach out to us through any of the channels below.",
                  style: TextStyles.mediumText(),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
                Spacers.heightLargeSpace(),
             
              Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  Collection(icon: Icons.email , title: 'Email', description:'hello@blip.com' ,),
                  Collection(icon:Icons.phone , title: 'Phone' , description: '+1(555)123-4567',),
                  Collection(icon: Icons.location_on, title:'Office' , description: '123 Innovation Street\nSan Francisco, CA 94102' ,),
                  Collection(icon: Icons.access_time, title:'Response Time' , description:'Within 24 hours' ,),
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
 