import 'package:flutter/material.dart';
import 'package:untitled3/second.dart';

import 'home.dart';

void main() {
  runApp(
      MaterialApp(
        home: const Home(),
        routes: {
          Second.id:(context)=>const Second(),
        },
  ),
  );
}

