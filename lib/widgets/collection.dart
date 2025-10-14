import 'package:flutter/material.dart';
import 'package:flutter_application/constants/text_styles.dart';

class Collection extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const Collection({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xffdce2eb),
            ),
            child: Icon(
              size: 30,
              icon,
              color: const Color(0xff052861),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style:  TextStyles.mediumText(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style:  TextStyles.mediumText(fontWeight: FontWeight.bold , color:Colors.grey[600], ),
            maxLines: 3,
            
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}