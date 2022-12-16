import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_app_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, this.title, required this.icon, this.onpressed});
  final String? title;
  final IconData icon;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title",
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomAppIcon(
          icon: icon,
          onpressed: onpressed,
        ),
      ],
    );
  }
}
