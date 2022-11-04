import 'package:flutter/material.dart';
import 'package:notesapp/core/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: 'Title',
              hintStyle: const TextStyle(color: kPrimaryColor),
              border: buildborder(),
              enabledBorder: buildborder(),
              focusedBorder: buildborder(kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white, width: 2));
  }
}
