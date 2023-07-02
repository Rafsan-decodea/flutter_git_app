import 'package:flutter/material.dart';
import 'package:pmp/db/note.dart';
import 'package:pmp/pmp/app.dart';

class NoteButtonListView extends StatelessWidget {
  final List<Note> notes;
  final bool shouldSort;
  final void Function(Note note)? onPressed;

  const NoteButtonListView({
    Key? key,
    required this.notes,
    this.shouldSort = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (shouldSort) Sort.sortNotes(notes);
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: [
        for (Note note in notes)
          PmpPadding(NoteButton(
            note: note,
            onPressed: () => onPressed?.call(note),
          )),
      ],
    );
  }
}
