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
        child: Addnoteform(),
      ),
    );
  }
}

class Addnoteform extends StatefulWidget {
  const Addnoteform({
    Key? key,
  }) : super(key: key);

  @override
  State<Addnoteform> createState() => _AddnoteformState();
}

class _AddnoteformState extends State<Addnoteform> {
  final GlobalKey<FormState> key = GlobalKey();
  AutovalidateMode autoVmode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: autoVmode,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomTextFeild(
            onsaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CustomTextFeild(
              onsaved: (value) {
                subtitle = value;
              },
              hint: 'content',
              maxlines: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomButton(
              Textz: 'Add',
              ontap: () {
                if (key.currentState!.validate()) {
                  key.currentState!.save();
                } else {
                  autoVmode = AutovalidateMode.always;
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
