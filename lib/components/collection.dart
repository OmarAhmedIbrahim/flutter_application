import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

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
              color: Color(0xffdce2eb),
            ),
      
            child: Icon(size: 30, Icons.account_box, color: Color(0xff052861)),
          ),
          SizedBox(height: 15),
          Text(
            "Free Consultation",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Get expert advice and project estimation\nat no cost",
            style: TextStyle(color: Color(0xff052861), fontSize: 15),
            maxLines: 3,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
