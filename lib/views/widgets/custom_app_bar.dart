import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes App',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
