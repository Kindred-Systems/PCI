import 'package:flutter/material.dart';
import 'screens/framing.dart'; // Import the chat screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kindred PCI - Problem Framing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FramingScreen(), // Load the chatbot UI
    );
  }
}
