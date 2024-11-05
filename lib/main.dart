import 'package:flutter/material.dart';
import 'package:tractian/injection.dart';
import 'package:tractian/src/vews/home_page.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tractian Challenge',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomePage());
  }
}
