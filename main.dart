import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(GenZApp());
}

class GenZApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GenZ Profile App",
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
