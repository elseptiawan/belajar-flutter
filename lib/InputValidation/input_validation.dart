import 'package:belajar_flutter/Widget/button.dart';
import 'package:flutter/material.dart';
// import '../constants.dart' as Constants;
// import 'package:flutter_svg/svg.dart';
import '../Widget/button.dart';
import '../Widget/input.dart';

void main() => runApp(const InputValidationPage());

// ignore: must_be_immutable
class InputValidationPage extends StatefulWidget {
  const InputValidationPage({super.key});

  @override
  InputValidationState createState() {
    return InputValidationState();
  }
}

class InputValidationState extends State<InputValidationPage> {
  final _formKey = GlobalKey<FormState>();
  var emailValue;
  var userEmail;

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
          title: const Text(
            "Input Validation",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hi There!",
                      style: TextStyle(
                          color: Color(0xFF0077B6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    if (userEmail != null) ...[
                      Text(
                        "Your email was $userEmail",
                        style:
                            const TextStyle(color: Color(0xFF7F7F7F), fontSize: 14),
                      ),
                    ]
                    else...[
                    const Text(
                      "Please enter your name and email :)",
                      style: TextStyle(color: Color(0xFF7F7F7F), fontSize: 14),
                    ),
                    ],
                    const SizedBox(height: 40),
                    const Row(
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          " *",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFFED1C2E)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    const MyInput(
                        textInput: "Enter your name",
                        icon: Icon(
                          Icons.person_outlined,
                          color: Color(0xFF0077B6),
                        ),
                        emptyMessage: "Name cannot be empty"),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          " *",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFFED1C2E)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    MyInput(
                      textInput: "Enter your email",
                      icon: const Icon(
                        Icons.mail_outlined,
                        color: Color(0xFF0077B6),
                      ),
                      emptyMessage: "Email cannot be empty",
                      typeInput: 'email',
                      onChange: (val) {
                        setState(() {
                          emailValue = val;
                        });
                      },
                    ),
                  ]),
            ),
          ),
        ),
        bottomNavigationBar: Container(
            padding: const EdgeInsets.all(30),
            child: MyButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                  setState(() {
                    userEmail = emailValue;
                  });
                }
              },
              textButton: "Submit",
            )));
  }
}
