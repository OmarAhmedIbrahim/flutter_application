
import 'package:flutter/material.dart';
import 'package:flutter_application/components/customtextfield.dart';
import 'package:flutter_application/components/intro.dart';
import 'package:flutter_application/software/validator.dart';

class Getquotescreen extends StatelessWidget {
  Getquotescreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Added Scaffold wrapper
      body: SingleChildScrollView(
        child: Column(
          children: [
            Intro(
              title: "Request A Quote",
              description:
                  "Ready to bring your vision to life? Tell us about your project and get a detailed quote tailored to your needs.",
            ),
            SizedBox(height: 20),
            Padding(
              // Added padding for better layout
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Your Custom Quote",
                    style: TextStyle(
                      fontSize: 32, // Reduced for better responsiveness
                      fontWeight: FontWeight.bold,
                      color: Color(0xff052861),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Fill out the form below and we'll get back to you with a detailed proposal.",
                    style: TextStyle(color: Color(0xffaaa5a9), fontSize: 17),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Card(
                    elevation: 10,
                    child: Container(
                      width: double.infinity, // Better responsiveness
                      constraints: BoxConstraints(
                        maxWidth: 700,
                      ), // Maximum width
                      padding: EdgeInsets.all(16.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Project Details",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              "The more details you provide, the more accurate your quote will be.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffaaa5a9),
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 20),
                            // First Name & Last Name Row
                            Row(
                              children: [
                                Expanded(
                                  child: Customtextfield(
                                    fieldName: "First Name",
                                    hintText: "Omar",
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Customtextfield(
                                    fieldName: "Last Name",
                                    hintText: "Gamal El-Din",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            // Email & Phone Row
                            Row(
                              children: [
                                Expanded(
                                  child: Customtextfield(
                                    fieldName: "Email",
                                    hintText: "omar.agamal.eldin@gmail.com",
                                    validator: Validator.emailValidator,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Customtextfield(
                                    fieldName: "Phone Number",
                                    hintText: "+1 (555) 123-456",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            // Project Description
                            Customtextfield(
                              fieldName: "Project Description",
                              hintText:
                                  "Please describe your project in detail",
                              minLines: 3,
                            ),
                            SizedBox(height: 15),
                            // Submit Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  _formKey.currentState!.validate();
                                },
                                child: Text(
                                  "Submit Quote Request",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrange,
                                  elevation: 10,
                                  minimumSize: Size(
                                    double.infinity,
                                    50,
                                  ), // Full width
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
