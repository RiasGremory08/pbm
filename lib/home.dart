import 'package:flutter/material.dart';
import 'package:latuas/form.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Mobil'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text('data not found'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const Pertemuan12()),
            (route) => false,
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
