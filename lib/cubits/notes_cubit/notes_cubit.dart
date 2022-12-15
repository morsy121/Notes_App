import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/core/constant.dart';
import 'package:notesapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    notes = noteBox.values.toList();
    emit(NotesSuccess());
  }
}
