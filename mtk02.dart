import 'package:flutter/material.dart';
import 'page01.dart';

class Mtk02 extends StatelessWidget {
  const Mtk02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MTK 02'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Materi: Pembelajaran MTK 02'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page01()),
                );
              },
              child: const Text('Ke Halaman Page 01'),
            ),
          ],
        ),
      ),
    );
  }
}
