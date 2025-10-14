import 'package:flutter/material.dart';

class Customtextfield extends StatefulWidget {
  const Customtextfield({
    super.key,
    required this.fieldName,
    this.minLines,
    this.hintText,
    this.validator,
    this.onSubmitted,
    this.onChanged,
    this.controller,
  });

  final String fieldName;
  final int? minLines;
  final String? hintText;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;
  final TextEditingController? controller;
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
        Text(widget.fieldName, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        TextFormField(
          textInputAction: TextInputAction.done,

          onFieldSubmitted: (value) {
            widget.onSubmitted?.call(value);
          },
          onChanged: (value) {
            widget.onChanged?.call(value);
          },
          controller: widget.controller,
          validator: widget.validator,
          minLines: widget.minLines ?? 1,
          maxLines: 5,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12),

            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]!, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
