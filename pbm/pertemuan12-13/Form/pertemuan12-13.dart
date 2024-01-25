import 'package:flutter/material.dart';
import 'package:flutter_pbm/pertemuan12-13/Form/form.dart';
class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Mobil'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text('data not found. . .'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Pertemuan12()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
