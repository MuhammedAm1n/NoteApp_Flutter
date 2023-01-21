import 'package:flutter/material.dart';
import 'package:noteappp/Veiws/EditNoteVeiw.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteVeiw();
        }));
      },
      child: Container(
        padding: EdgeInsetsDirectional.all(15),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: const Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Flutter Tips',
                    style: TextStyle(color: Colors.black, fontSize: 35),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                  child: Text(
                    'This Project i made it by my self realy',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      size: 35,
                      color: Colors.black,
                    ))),
            const Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                'May 22/2001',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
