import 'package:flutter_application/constants/spacers.dart';
import 'package:flutter_application/constants/text_styles.dart';
import 'package:flutter_application/widgets/collection.dart';
import 'package:flutter_application/widgets/intro.dart';
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
            Spacers.heightMediumSpace(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Our Story ",
                style: TextStyles.largeText(
                    color: Color(0xff052861),
                    fontWeight: FontWeight.bold,
                  ),
              ),
                Spacers.heightSmallSpace(),
              Text(
                "Founded with a vision to redefine outsourced customer service, ConnectWise Solutions bridges the gap between businesses and their customers.\nWe understand that every call, text, or inquiry is an opportunity to build loyalty.",
                  style: TextStyles.mediumText(color:Colors.grey[600],),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
                Spacers.heightMediumSpace(),
              Text(
                "That's why we've built a platform that delivers fast, reliable, and personalized support, tailored to your unique needs. Our technology-first\napproach ensures seamless integration with your existing systems while maintaining the human touch that customers value",
                  style: TextStyles.mediumText(color:Colors.grey[600],),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
                Spacers.heightLargeSpace(),
              Text(
                "Our Values ",
                style: TextStyles.largeText(
                    color: Color(0xff052861),
                    fontWeight: FontWeight.bold,
                  ),
              ),
                Spacers.heightSmallSpace(),
              Text(
                "We're committed to delivering exceptional results for every project.",
                textAlign: TextAlign.center,
                  style: TextStyles.mediumText(color:Colors.grey[600],),
              ),
                Spacers.heightLargeSpace(),
              Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  Collection(
                    icon: Icons.people,
                    title: "Team Excellence",
                    description:
                        "Our passionate team of innovators brings\n diverse expertise to every project.",
                  ),
                  Collection(
                    icon: Icons.track_changes,
                    title: "Mission Driven",
                    description:
                        'We\'re committed to creating exceptional\n digital experiences that matter.',
                  ),
                  Collection(
                    icon: Icons.workspace_premium,
                    title: 'Quality First',
                    description:
                        'Excellence is not just our goal—it\'s our\n standard in everything we do.',
                  ),
                  Collection(
                    icon: Icons.public,
                    title: 'Global Impact',
                    description:
                        'Transforming businesses worldwide through \ninnovative solutions.',
                  ),
                ],
              ),
                Spacers.heightMediumSpace(),
            ],
          ),
        ],
      ),
    );
  }
}
