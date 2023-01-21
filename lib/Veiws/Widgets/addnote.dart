import 'package:flutter/material.dart';
import 'package:noteappp/Veiws/Widgets/custombutton.dart';

import 'CustomTextFeild.dart';

class AddNote extends StatelessWidget {
  const AddNote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CustomButton(Textz: 'Add'),
            )
          ],
        ),
      ),
    );
  }
}
