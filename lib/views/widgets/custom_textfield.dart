import 'package:flutter/material.dart';
import 'package:notesapp/core/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.maxLines,
      this.onsaved,
      this.onchange});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onsaved;
  final Function(String?)? onchange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchange,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Filled is required";
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white, width: 2));
  }
}
