import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pmp/db/note.dart';
import 'package:pmp/pmp/app.dart';

class NoteButton extends StatelessWidget {
  final Note note;
  final void Function()? onPressed;

  const NoteButton({
    Key? key,
    required this.note,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThreeWidgetButton(
      center: Lottie.asset("assets/images/notes.json"),
      onPressed: onPressed,
      right: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(note.title,
                style: const TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 20, 19, 19))),
          ),
        ],
      ),
    );
  }
}
