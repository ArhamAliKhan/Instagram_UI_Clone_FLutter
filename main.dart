import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(ThisApp());
}

class ThisApp extends StatefulWidget {
  const ThisApp({super.key});

  @override
  State<ThisApp> createState() => _ThisAppState();
}

class _ThisAppState extends State<ThisApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
