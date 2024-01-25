import 'package:flutter/material.dart';

class Pertemuan9 extends StatelessWidget {
  const Pertemuan9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pertemuan 9")),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Scrolling',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EXLV()));
              },
              child: Text('List View'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExLVB()));
              },
              child: Text('List View Builder'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExLVS()));
              },
              child: Text('List View Separated'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExGVC()));
              },
              child: Text('Grid View Count'),
            ),
          ),
        ],
      ),
    );
  }
}

class EXLV extends StatelessWidget {
  const EXLV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List View")),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 1',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 2',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 3',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 4',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 5',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 6',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 7',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class ExLVB extends StatelessWidget {
  const ExLVB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View Builder')),
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, position) {
            return Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 15, left: 15, bottom: 15),
              child: Text(
                'Text $position',
                style: const TextStyle(fontSize: 16),
              ),
            );
          }),
    );
  }
}

class ExLVS extends StatelessWidget {
  const ExLVS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View Separated')),
      body: ListView.separated(
          itemBuilder: (context, position) {
            return Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 15, left: 15, bottom: 15),
                child: Text(
                  'List Separated $position',
                  style: const TextStyle(fontSize: 18),
                ));
          },
          separatorBuilder: (context, position) => const Divider(),
          itemCount: 30),
    );
  }
}

class ExGVC extends StatelessWidget {
  const ExGVC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View')),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 1',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 2',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 3',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 4',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 5',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 6',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 7',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 8',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            height: 250,
            child: const Text(
              'Text 9',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
