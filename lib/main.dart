import 'package:chirpapp/view/chat_screen.dart';
import 'package:chirpapp/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChirpApp());
}

class ChirpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => HomeScreen(),
        '/ChatScreen' : (context) => ChatScreen(),

      },
    );
  }
}
