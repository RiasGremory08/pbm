import 'package:flutter/material.dart';

class Pertemuan12 extends StatefulWidget {
  const Pertemuan12({super.key});

  @override
  State<Pertemuan12> createState() => _Pertemuan12State();
}

class _Pertemuan12State extends State<Pertemuan12> {
  String selectItem = 'Pilih Produsen';
  var valueItem = [
    'Pilih Produsen',
    'Apple',
    'Oppo',
    'Samsung',
    'Vivo',
    'Xiaomi'
  ];
  int selectValue = 1;
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  bool isCheck4 = false;
  bool isCheck5 = false;
  TextEditingController tecNama = TextEditingController();
  TextEditingController tecKode = TextEditingController();
  TextEditingController tecSeri = TextEditingController();
  TextEditingController tecJenisjaringan = TextEditingController();
  TextEditingController tecProdusen = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soal Respon'),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: tecKode,
              decoration: const InputDecoration(label: Text('Kode Smarthpone')),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: tecNama,
              decoration: const InputDecoration(label: Text('Nama Smarthpone')),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: tecSeri,
              decoration: const InputDecoration(label: Text('Seri')),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                const ListTile(
                  title: Text('Jenis Jaringan'),
                ),
                ListTile(
                  title: const Text('4G'),
                  leading: Radio(
                    value: 1,
                    groupValue: selectValue,
                    onChanged: (value) {
                      setState(() {
                        selectValue = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('5G'),
                  leading: Radio(
                    value: 2,
                    groupValue: selectValue,
                    onChanged: (value) {
                      setState(() {
                        selectValue = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 30),
            child: DropdownButton(
              items: valueItem.map((String itemValue) {
                return DropdownMenuItem(
                  value: itemValue,
                  child: Text(itemValue),
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
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Simpan Data'),
            ),
          ),
        ],
      ),
    );
  }
}
