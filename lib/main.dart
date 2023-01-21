import 'package:flutter/material.dart';
import 'package:noteappp/Veiws/Note_Veiw.dart';

void main() {
  runApp(const NoteAPP());
}

class NoteAPP extends StatelessWidget {
  const NoteAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: NoteVeiw(),
    );
  }
}
