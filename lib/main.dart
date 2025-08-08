import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: const Color(0xFFF0F2F5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
          ),
        ),
      ),
      home: Placeholder(),
    );
  }
}
