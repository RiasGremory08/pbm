import 'package:flutter/material.dart';

class Pertemuan6 extends StatefulWidget {
  const Pertemuan6({super.key});

  @override
  State<Pertemuan6> createState() => _Pertemuan6State();
}

class _Pertemuan6State extends State<Pertemuan6> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      debugShowCheckedModeBanner: false,
      home: const ExPage1(),
      routes: <String, WidgetBuilder>{
        '/page1': (context) => const ExPage1(),
        '/page2': (context) => const ExPage2(),
        '/page3': (context) => const ExPage3(),
        //'/page4' :(context) => const ExPage4(),
      },
    );
  }
}

class ExPage1 extends StatelessWidget {
  const ExPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 6'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ExPage2()));
                },
                child: const Text('Contoh Push')),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Contoh Pop')),
          ),
        ],
      ),
    );
  }
}

class ExPage2 extends StatelessWidget {
  const ExPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator Push'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page3');
                },
                child: const Text('Contoh Push Name')),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Contoh Pop')),
          ),
        ],
      ),
    );
  }
}

class ExPage3 extends StatelessWidget {
  const ExPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigator Push Name')),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {}, child: const Text('Contoh Push Replacement')),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {}, child: const Text('Contoh Pop ')),
          ),
        ],
      ),
    );
  }
}
