import 'package:flutter/material.dart';
import 'package:latuas/home.dart';
import 'package:latuas/resultscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PBM1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        // Tambahkan rute untuk layar hasil
        '/resultScreen': (context) => ResultScreen(),
      },
    );
  }
}
