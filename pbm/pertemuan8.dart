import 'package:flutter/material.dart';
import 'package:flutter_pbm/home.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Pertemuan8 extends StatefulWidget {
  const Pertemuan8({super.key});
  @override
  State<Pertemuan8> createState() => _Pertemuan8State();
}

class _Pertemuan8State extends State<Pertemuan8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 8'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Short Message Notification',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: 'ini fluttertoast',
                    timeInSecForIosWeb: 3,
                    webBgColor: "linear-gradient(to right, #800080, #BFFF00)");
              },
              child: const Text('Toast'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                final sb = SnackBar(
                  content: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      'ini SnackBar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  action: SnackBarAction(label: 'Action', onPressed: () {}),
                );
                ScaffoldMessenger.of(context).showSnackBar(sb);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('SnackBar'),
            ),
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Tooltip(
                message: 'ini Tooltip',
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                waitDuration: const Duration(seconds: 1),
                showDuration: const Duration(seconds: 3),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(('Tooltip')),
                ),
              )),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                      (route) => false);
                },
                child: const Text('Kembali')),
          ),
        ],
      ),
    );
  }
}
