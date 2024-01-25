import 'package:flutter/material.dart';
import 'package:latuas/form.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SmartphoneData smartphoneData =
        ModalRoute.of(context)!.settings.arguments as SmartphoneData;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Respon'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kode: ${smartphoneData.kode}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Nama: ${smartphoneData.nama}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Seri: ${smartphoneData.seri}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Jenis Jaringan: ${smartphoneData.jenisJaringan == 1 ? '4G' : '5G'}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Produsen: ${smartphoneData.produsen}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke layar sebelumnya
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
