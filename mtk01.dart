import 'package:flutter/material.dart';
import 'mtk02.dart';

class Mtk01 extends StatelessWidget {
  const Mtk01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MTK 01'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Materi: Pembelajaran MTK 01'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Mtk02()),
                );
              },
              child: const Text('Ke Halaman MTK 02'),
            ),
          ],
        ),
      ),
    );
  }
}
