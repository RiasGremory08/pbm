import 'package:flutter/material.dart';

class Pertemuan11 extends StatefulWidget {
  const Pertemuan11({super.key});

  @override
  State<Pertemuan11> createState() => _Pertemuan11State();
}

class _Pertemuan11State extends State<Pertemuan11> {
  String selectItem = 'Pilih Menu';
  var valueItem = ['Pilih Menu', 'PBM1', 'PBD', 'PBW'];
  int selectValue = 1;
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 11'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Komponen Form',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: const Text('Dropdown Button'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: DropdownButton(
              items: valueItem.map((String itemvalue) {
                return DropdownMenuItem(
                  value: itemvalue,
                  child: Text(itemvalue),
                );
              }).toList(),
              value: selectItem,
              onChanged: (value) {
                setState(() {
                  selectItem = value!;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: const Text('Radio'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                ListTile(
                  title: const Text('laki-laki'),
                  leading: Radio(
                      value: 1,
                      groupValue: selectValue,
                      onChanged: (value) {
                        setState(() {
                          selectValue = value!;
                        });
                      }),
                ),
                ListTile(
                  title: const Text('Perempuan'),
                  leading: Radio(
                      value: 2,
                      groupValue: selectValue,
                      onChanged: (value) {
                        setState(() {
                          selectValue = value!;
                        });
                      }),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: const Text('Checkbox'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Column(
              children: [
                ListTile(
                  title: const Text('Bola'),
                  leading: Checkbox(
                      value: isCheck1,
                      onChanged: (value) {
                        setState(() {
                          isCheck1 = value!;
                        });
                      }),
                ),
                ListTile(
                  title: const Text('Renang'),
                  leading: Checkbox(
                      value: isCheck2,
                      onChanged: (value) {
                        setState(() {
                          isCheck2 = value!;
                        });
                      }),
                ),
                ListTile(
                  title: const Text('Voli'),
                  leading: Checkbox(
                      value: isCheck3,
                      onChanged: (value) {
                        setState(() {
                          isCheck3 = value!;
                        });
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
