import 'package:flutter/material.dart';

const questFieldDecoration = InputDecoration(
  // contentPadding: ,
  hintText: 'Email',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(16.0),
    ),
    borderSide: BorderSide(
      width: 20,
      color: Colors.lightBlueAccent,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.lightBlueAccent,
      width: 3,
    ),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.lightBlueAccent,
      width: 3,
    ),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
);
