import 'package:chat_bot/chat_screen.dart';
import 'package:chat_bot/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
     Timer(Duration(seconds: 3), () {
      // Navigate to the next screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => ChatScreen(),
        ),
      );
    });

    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset('assets/icon.png',height: 60,width: 60,))
      ],
    );
  }
}