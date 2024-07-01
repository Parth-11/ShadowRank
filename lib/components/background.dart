import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final background = BoxDecoration(
  gradient: LinearGradient(
    begin: AlignmentDirectional.bottomEnd,
    end: Alignment.topCenter,
    colors: [
      HexColor('#0a1543'),
      HexColor('#1b45d7'),
    ],
  ),
);
