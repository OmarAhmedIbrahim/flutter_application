import 'package:flutter/material.dart';
import 'package:flutter_application/constants/Spacers.dart';
import 'package:flutter_application/constants/text_styles.dart';
import 'package:flutter_application/widgets/collection.dart';
import 'package:flutter_application/widgets/intro.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Intro(
              height: 500,
              title: "Your Customers, Our Priority:\n24/7 Seamless Support",
              description:
                  "Professional customer service that never sleeps. We handle your calls, texts,\nand inquiries so you can focus on growing your business",
            ),
            Spacers.heightMediumSpace(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Exceptional Customer Service, Around the Clock ",
                  textAlign: TextAlign.center,
                  style: TextStyles.largeText(
                    color: Color(0xff052861),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacers.heightSmallSpace(),
                Text(
                  "At ConnectWise Solutions, we provide 24/7 outsourced customer service that ensures your\ncustomers are never left waiting. As a dedicated contractor, we seamlessly integrate with your\nbusiness to handle calls, texts, and inquiries at any hour—whether it's after 10 PM or during peak hours.",
                  style: TextStyles.mediumText(color:Colors.grey[600], ),
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
                Spacers.heightMediumSpace(),
                Text(
                  "Our expertly trained team becomes an extension of your brand, delivering exceptional service that keeps your customers\nsatisfied and loyal. With cutting-edge technology and a commitment to excellence, we connect your business to your\ncustomers, no matter the time or place.",
                  style: TextStyles.mediumText(color:Colors.grey[600],),
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
                Spacers.heightLargeSpace(),
                Text(
                  "Why Choose Us ",
                  style: TextStyles.largeText(
                    color: Color(0xff052861),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacers.heightSmallSpace(),
                Text(
                  "We're committed to delivering exceptional results for every project.",
                  style: TextStyles.mediumText(color:Colors.grey[600],),
                  textAlign: TextAlign.center,
                ),
                Spacers.heightLargeSpace(),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Collection(icon: Icons.support_agent, title:"Free Consultation" , description:"Get expert advice and project estimation\n at no cost" ,),
                    Collection(icon:Icons.schedule , title:"Quick Response" , description: "Receive a detailed quote within\n 24-48 hours",),
                    Collection(icon: Icons.people, title: "Dedicated Team", description:"Work with experienced professionals\n committed to your success" ,),
                    Collection(icon: Icons.electric_bolt, title:"Fast Turnaround" , description: "Efficient project delivery without\n compromising quality",),
                  ],
                ),
                Spacers.heightMediumSpace(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
