import 'package:flutter/material.dart';
import 'package:flutter_application/constants/Spacers.dart';
import 'package:flutter_application/constants/text_styles.dart';
import 'package:flutter_application/widgets/custom_textfield.dart';
import 'package:flutter_application/widgets/intro.dart';
import 'package:flutter_application/software/validator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetQuoteScreen extends StatelessWidget {
   GetQuoteScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController firstController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController lastController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference quotes = FirebaseFirestore.instance.collection(
      'Quotes',
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Intro(
              title: "Request A Quote",
              description:
                  "Ready to bring your vision to life? Tell us about your project and get a detailed quote tailored to your needs.",
            ),
            Spacers.heightMediumSpace(),
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
                  Spacers.heightSmallSpace(),
                  Text(
                    "Fill out the form below and we'll get back to you with a detailed proposal.",
                    style: TextStyles.mediumText(color: Color(0xffaaa5a9)),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  Spacers.heightMediumSpace(),
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
                                  color: Colors.black,
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
                            Spacers.heightMediumSpace(),
                            // First Name & Last Name Row
                            Row(
                              children: [
                                Expanded(
                                  child: Customtextfield(
                                    fieldName: "First Name",
                                    hintText: "Omar",
                                    validator: Validator.filledValidator,
                                    controller: firstController,
                                  ),
                                ),
                                Spacers.widthMediumSpace(),
                                Expanded(
                                  child: Customtextfield(
                                    fieldName: "Last Name",
                                    hintText: "Gamal El-Din",
                                    validator: Validator.filledValidator,
                                    controller: lastController,
                                  ),
                                ),
                              ],
                            ),
                            Spacers.heightMediumSpace(),
                            // Email & Phone Row
                            Row(
                              children: [
                                Expanded(
                                  child: Customtextfield(
                                    fieldName: "Email",
                                    hintText: "omar.agamal.eldin@gmail.com",
                                    validator: Validator.emailValidator,
                                    controller: emailController,
                                  ),
                                ),
                                Spacers.widthMediumSpace(),
                                Expanded(
                                  child: Customtextfield(
                                    fieldName: "Phone Number",
                                    hintText: "+1 (555) 123-456",
                                    validator: Validator.filledValidator,
                                    controller: phoneController,
                                  ),
                                ),
                              ],
                            ),
                            Spacers.heightMediumSpace(),
                            // Project Description
                            Customtextfield(
                              fieldName: "Project Description",
                              hintText:
                                  "Please describe your project in detail",
                              minLines: 3,
                              validator: Validator.filledValidator,
                              controller: descriptionController,
                            ),
                            Spacers.heightSmallSpace(),
                            // Submit Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    // Add timestamp when submitting
                                    quotes.add({
                                      'email': emailController.text.trim(),
                                      'name':
                                          "${firstController.text.trim()} ${lastController.text.trim()}",
                                      'phone': phoneController.text.trim(),
                                      'description': descriptionController.text
                                          .trim(),
                                      'timestamp': FieldValue.serverTimestamp(), // Add this line
                                    });
                                    emailController.clear();
                                    firstController.clear();
                                    lastController.clear();
                                    phoneController.clear();
                                    descriptionController.clear();
                                  }
                                },
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
                                child: Text(
                                  "Submit Quote Request",
                                  style: TextStyles.mediumText(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Spacers.heightMediumSpace(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacers.heightMediumSpace(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}