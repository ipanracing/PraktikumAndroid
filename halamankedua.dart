import 'package:flutter/material.dart';
import 'mtk01.dart';

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Kedua'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ini adalah Halaman Kedua.'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Mtk01()),
                );
              },
              child: const Text('Ke Halaman MTK 01'),
            ),
          ],
        ),
      ),
    );
  }
}
