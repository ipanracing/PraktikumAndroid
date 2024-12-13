import 'package:flutter/material.dart';
import 'pegawai.dart';

class Page02 extends StatelessWidget {
  const Page02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 02'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ini adalah Page 02'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pegawai()),
                );
              },
              child: const Text('Ke Halaman Pegawai'),
            ),
          ],
        ),
      ),
    );
  }
}
