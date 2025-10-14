import 'package:flutter/material.dart';
import 'package:flutter_application/constants/Spacers.dart';
import 'package:flutter_application/constants/text_styles.dart';
import 'package:flutter_application/screens/about_us_screen.dart';
import 'package:flutter_application/screens/contact_us_screen.dart';
import 'package:flutter_application/screens/get_quote_screen.dart';
import 'package:flutter_application/screens/home_screen.dart';
import 'package:flutter_application/widgets/appbar_button.dart';

class ResponsiveHome extends StatefulWidget {
  const ResponsiveHome({super.key});

  @override
  State<ResponsiveHome> createState() => _ResponsiveHomeState();
}

class _ResponsiveHomeState extends State<ResponsiveHome> {
  Widget screen = Homescreen();

  void _goHome() => setState(() => screen = Homescreen());
  void _goAbout() => setState(() => screen = Aboutusscreen());
  void _goContact() => setState(() => screen = Contactusscreen());
  void _goQuote() => setState(() => screen = GetQuoteScreen());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        final bool isMobile = width < 700;

        if (isMobile) {
          // Mobile: AppBar + Drawer navigation
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              // title: const Text(
              //  companyName ,
              //   overflow: TextOverflow.ellipsis,
              // ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: smallPadding),
                  child: Appbarbutton(function: _goQuote),
                ),
              ],
            ),
            drawer: Drawer(
              child: SafeArea(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const DrawerHeader(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Menu",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text("Home"),
                      onTap: () {
                        Navigator.pop(context);
                        _goHome();
                      },
                    ),
                    ListTile(
                      title: const Text("About us"),
                      onTap: () {
                        Navigator.pop(context);
                        _goAbout();
                      },
                    ),
                    ListTile(
                      title: const Text("Contact us"),
                      onTap: () {
                        Navigator.pop(context);
                        _goContact();
                      },
                    ),
                  ],
                ),
              ),
            ),
            body: SafeArea(child: screen),
          );
        }

        // Tablet/Desktop: top navigation with buttons centered
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            // leading: Text(
            //   companyName ,
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _goHome,
                  child: Text(
                    "Home",
                    style: TextStyles.mediumText(),
                  ),
                ),
                TextButton(
                  onPressed: _goAbout,
                  child: Text(
                    "About us",
                    style: TextStyles.mediumText(),
                  ),
                ),
                TextButton(
                  onPressed: _goContact,
                  child: Text(
                    "Contact us",
                    style: TextStyles.mediumText(),
                  ),
                ),
              ],
            ),

            actions: [
              Appbarbutton(function: _goQuote),
              Spacers.widthMediumSpace()
            ],
          ),
          body: SafeArea(child: screen),
        );
      },
    );
  }
}