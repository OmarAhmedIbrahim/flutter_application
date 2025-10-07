import 'package:flutter/material.dart';

class Appbarbutton extends StatefulWidget {
  const Appbarbutton({super.key , required this.function});

final VoidCallback function ;

  @override
  State<Appbarbutton> createState() => _AppbarbuttonState();
}

class _AppbarbuttonState extends State<Appbarbutton> {
  
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
              onPressed: widget.function,
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
                "Request a Qoute",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
            );
  }
}