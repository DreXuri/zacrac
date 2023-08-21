import 'package:flutter/material.dart';

class ScoreTiles {
  final String id;
  final String title;
  final String defaultNo;
  final String percent;
  final String status;
  final Color colo;
  final Color coloDefault;

  ScoreTiles({
    required this.id,
    required this.title,
    required this.defaultNo,
    required this.percent,
    required this.status,
    required this.colo,
    required this.coloDefault,
  });
}
