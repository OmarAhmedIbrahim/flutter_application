import 'package:flutter/material.dart';
import 'package:flutter_application/constants/Spacers.dart';
import 'package:flutter_application/constants/TextStyles.dart';
import 'package:flutter_application/widgets/customtextfield.dart';
import 'package:flutter_application/widgets/intro.dart';
import 'package:flutter_application/software/validator.dart';

class Getquotescreen extends StatelessWidget {
  Getquotescreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Intro(
              title: "Request A Quote",
              description:
                  "Ready to bring your vision to life? Tell us about your project and get a detailed quote tailored to your needs.",
            ),
            Spacers.HMediumSpace(),
            Padding(
              // Added padding for better layout
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Your Custom Quote",
                    style: TextStyles.largeText(
                      color: Color(0xff052861),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
Spacers.HSmallSpace(),
                  Text(
                    "Fill out the form below and we'll get back to you with a detailed proposal.",
                    style: TextStyles.mediumText(color: Color(0xffaaa5a9)),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
            Spacers.HMediumSpace(),
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
                                style: TextStyles.largeText(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                            ),
                            Text(
                              "The more details you provide, the more accurate your quote will be.",
                              textAlign: TextAlign.center,
                              style: TextStyles.mediumText(
                                color: Color(0xffaaa5a9),
                              ),
                            ),
            Spacers.HMediumSpace(),
                            // First Name & Last Name Row
                            Row(
                              children: [
                                Expanded(
                                  child: Customtextfield(
                                    fieldName: "First Name",
                                    hintText: "Omar",
                                  ),
                                ),
            Spacers.WMediumSpace(),
                                Expanded(
                                  child: Customtextfield(
                                    fieldName: "Last Name",
                                    hintText: "Gamal El-Din",
                                  ),
                                ),
                              ],
                            ),
            Spacers.HMediumSpace(),
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
            Spacers.WMediumSpace(),
                                Expanded(
                                  child: Customtextfield(
                                    fieldName: "Phone Number",
                                    hintText: "+1 (555) 123-456",
                                  ),
                                ),
                              ],
                            ),
            Spacers.HMediumSpace(),
                            // Project Description
                            Customtextfield(
                              fieldName: "Project Description",
                              hintText:
                                  "Please describe your project in detail",
                              minLines: 3,
                            ),
            Spacers.HSmallSpace(),
                            // Submit Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  _formKey.currentState!.validate();
                                },
                                child: Text(
                                  "Submit Quote Request",
                                  style: TextStyles.mediumText(
                                    color: Colors.white,
                                  ),
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
            Spacers.HMediumSpace(),
                          ],
                        ),
                      ),
                    ),
                  ),
            Spacers.HMediumSpace(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
