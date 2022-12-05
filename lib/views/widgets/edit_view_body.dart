import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_app_bar.dart';
import 'package:notesapp/views/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.edit,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(hintText: "title", maxLines: 1),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hintText: "content", maxLines: 5)
        ],
      ),
    );
  }
}
