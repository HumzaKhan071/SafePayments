import 'package:flutter/material.dart';
import 'package:safepayments/Screens/OnBoardScreens/OnBoardScreen.dart';

import 'Screens/HomeScreens/HomeScreen.dart';
import 'Screens/QRScreens/QRScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: OnBoardScreen(),
      routes: {
        "/home": (context) => const HomeScreen(),
        "/qr": (context) => const QRScreen(),
      },
    );
  }
}
