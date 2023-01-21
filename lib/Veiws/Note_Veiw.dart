import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:noteappp/Veiws/Widgets/ListVeiwNotes.dart';
import 'package:noteappp/Veiws/Widgets/Noteitem.dart';
import 'package:noteappp/Veiws/Widgets/addnote.dart';

class NoteVeiw extends StatelessWidget {
  const NoteVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 96, 91, 91),
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              context: context,
              builder: (builder) {
                return AddNote();
              });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [Expanded(child: ListVeiwNotes())],
          )),
    );
  }
}
