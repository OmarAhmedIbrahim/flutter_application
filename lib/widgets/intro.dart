import 'package:flutter/material.dart';
import 'package:flutter_application/constants/text_styles.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
    this.height,
    required this.title,
    required this.description,
  });
  final double? height;
  final String title;
  final String description;

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
            style: TextStyles.veryLargeText(),
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          Center(
            child: Text(
              description,
              style: TextStyles.largeText(),
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
