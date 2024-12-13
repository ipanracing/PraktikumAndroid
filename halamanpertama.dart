import 'package:flutter/material.dart';
import 'halamankedua.dart';

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Pertama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Selamat datang di Halaman Pertama!'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanKedua()),
                );
              },
              child: const Text('Ke Halaman Kedua'),
            ),
          ],
        ),
      ),
    );
  }
}
