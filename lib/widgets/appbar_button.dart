import 'package:flutter/material.dart';

class Appbarbutton extends StatelessWidget {
  const Appbarbutton({super.key , required this.function});

final VoidCallback function ;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
              onPressed: function,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                elevation: 10,
                minimumSize: Size(100, 50),
                //maximumSize: Size(100, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              child: Text(
                "Request a Quote",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
            );
  }
}