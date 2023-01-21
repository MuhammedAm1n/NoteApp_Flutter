import 'package:flutter/material.dart';
import 'package:noteappp/Veiws/Widgets/Noteitem.dart';

class ListVeiwNotes extends StatelessWidget {
  const ListVeiwNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.0),
        child: NoteItem(),
      );
    });
  }
}
