import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class MyInput extends StatelessWidget {
  const MyInput({
    super.key,
    required this.textInput,
    required this.icon,
    this.emptyMessage = "",
    this.typeInput = "text", 
    this.onChange,
  });
  final String textInput;
  final Icon icon;
  final String emptyMessage;
  final String typeInput;
  // ignore: prefer_typing_uninitialized_variables
  final onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
        scrollPadding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return emptyMessage;
          }
          if (typeInput == "email") {
            if (!EmailValidator.validate(value)) {
              return ("Email Invalid");
            }
          }
          return null;
        },
        decoration: InputDecoration(
            fillColor: const Color.fromRGBO(255, 255, 255, 0.10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: const BorderSide(color: Color(0xFF0077B6)),
            ),
            labelText: textInput,
            prefixIcon: IconButton(onPressed: () => Null, icon: icon)));
  }
}
