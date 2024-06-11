import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JOBSHEET5'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TeksUtama(
                teks1: 'Ahmad Syarif',
                teks2: 'NIM : STI202102432',
              ),
              TeksUtama(
                teks1: 'Agus Prianto',
                teks2: 'NIM : STI202102251',
              ),
              TeksUtama(
                teks1: 'Septaheksa panggih a',
                teks2: 'NIM : STI202102266',
                withBackground: true,
              ),
              TeksUtama(
                teks1: 'Mohamad Faiz',
                teks2: 'NIM : STI202102601',
              ),
              TeksUtama(
                teks1: 'Anggoro Mustika Putra',
                teks2: 'NIM : STI202102152',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final bool withBackground;

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
    this.withBackground = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Menetapkan lebar penuh pada Container
      color: withBackground ? Colors.green : Colors.transparent,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Menyejajarkan teks ke kiri
        children: [
          Text(
            teks1,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            teks2,
            textDirection: TextDirection.ltr,
          ),
        ],
      ),
    );
  }
}
