import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
part 'notemodel.g.dart';

@HiveType(typeId: 0)
class noteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

//Constractor
  noteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
