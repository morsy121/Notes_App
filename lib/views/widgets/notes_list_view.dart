import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: notes.length,
            itemBuilder: (context, index) => NotesItem(
              note: notes[index],
            ),
          ),
        );
      },
    );
  }
}
