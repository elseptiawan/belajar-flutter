import 'package:flutter/material.dart';
import 'menu_card.dart';
import '../constants.dart' as constants;
import '../DummyUI/home_page.dart';

void main() => runApp(const LandingPage());

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Colors.white,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Container(
            padding: const EdgeInsets.all(7),
            child: const Text(
              "Choose Section",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Color(0xFF000000)),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(27),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePage()),
                  );
                },
                child: const MenuCard(title: "Dummy UI", subtitle: "Practice flutter UI and get familiar with UI Widgets")
              ),
              const SizedBox(height: constants.spaceLandingPage),
              const Divider(
                color: Color(0xFFEBEBEB),
              ),
              const SizedBox(height: constants.spaceLandingPage),
              const MenuCard(title: "Simple Calculator", subtitle: "Creating calculator app that consists add, divide, substract, multiply function"),
              const SizedBox(height: constants.spaceLandingPage),
              const Divider(
                color: Color(0xFFEBEBEB),
              ),
              const SizedBox(height: constants.spaceLandingPage),
              const MenuCard(title: "Input Validation", subtitle: "Play around with email input & password input"),
              const SizedBox(height: constants.spaceLandingPage),
              const Divider(
                color: Color(0xFFEBEBEB),
              ),
            ],
          ),
        ));
  }
}