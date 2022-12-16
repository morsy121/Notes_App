import 'package:flutter/material.dart';

class CustomAppIcon extends StatelessWidget {
  const CustomAppIcon({super.key, required this.icon, this.onpressed});
  final IconData icon;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
          child: IconButton(
        icon: Icon(
          icon,
          size: 28,
        ),
        onPressed: onpressed,
      )),
    );
  }
}
