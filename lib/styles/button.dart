import 'package:flutter/material.dart';

double width = 70;
double height = 50;

final ButtonStyle buttonPrimary_short = ElevatedButton.styleFrom(
  minimumSize: Size(width, height),
  elevation: 0,
);

final ButtonStyle buttonPrimary_long = ElevatedButton.styleFrom(
  minimumSize: Size(width * 1.5, height),
  elevation: 0,
);

final ButtonStyle buttonPrimary_very_long = ElevatedButton.styleFrom(
  minimumSize: Size(width * 2, height),
  elevation: 0,
);
