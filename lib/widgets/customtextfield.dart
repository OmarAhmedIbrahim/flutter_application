import 'package:flutter/material.dart';

class Customtextfield extends StatefulWidget {
  Customtextfield({super.key , required this.fieldName , this.minLines , required this.hintText , this.validator});
  String fieldName ;
  int? minLines;
  String hintText;
  final FormFieldValidator<String>? validator;
    @override
  State<Customtextfield> createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.fieldName , style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(height: 8),
        TextFormField(
          validator: widget.validator,
          minLines: widget.minLines ?? 1,
          maxLines: 5,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12),
        
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Colors.grey
            ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:  Colors.grey[400]!,width: 1.0,
          )
        ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedErrorBorder:OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ), 
          ),
        ),
      ],
    );
  }
}














