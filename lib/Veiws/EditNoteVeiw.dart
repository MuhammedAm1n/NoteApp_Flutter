import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:noteappp/Veiws/Widgets/CustomTextFeild.dart';

import 'Widgets/custombutton.dart';

class EditNoteVeiw extends StatelessWidget {
  const EditNoteVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Notes'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.check))],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CustomTextFeild(
                hint: 'Title',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: CustomTextFeild(
                  hint: 'content',
                  maxlines: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
