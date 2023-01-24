import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    Key? key,
    required this.hint,
    this.maxlines = 1,
    this.onsaved,
  }) : super(key: key);
  final String hint;
  final int maxlines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Field Is required";
        } else {}
      },
      maxLines: maxlines,
      cursorColor: Colors.cyan,
      decoration: InputDecoration(
          hintText: hint,
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(Colors.cyan)),
    );
  }
}

OutlineInputBorder buildborder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
