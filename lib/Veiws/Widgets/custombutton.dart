import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.ontap, required this.Textz});
  String Textz;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsetsDirectional.all(30),
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(12)),
        width: double.infinity,
        height: 50,
        child: Center(
            child: Text(
          Textz,
          style: TextStyle(fontSize: 18),
        )),
      ),
    );
  }
}
